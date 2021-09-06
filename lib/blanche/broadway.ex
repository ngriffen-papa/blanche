defmodule Blanche.Broadway do
  @moduledoc """
  Mostly-boilerplate configuration for Broadway, an external dependency we're using to process messages / events and interface with Kafka
  See https://hexdocs.pm/broadway/apache-kafka.html#define-the-pipeline-configuration
  """
  use Broadway

  alias Broadway.Message

  require Logger

  @hosts Application.compile_env(:blanche, [:broadway, :kafka_hosts])
  @topics Application.compile_env(:blanche, [:broadway, :kafka_topics])

  def start_link(_opts) do
    Broadway.start_link(__MODULE__,
      name: __MODULE__,
      producer: [
        module:
          {BroadwayKafka.Producer,
           [
             hosts: @hosts,
             group_id: "group_1",
             topics: @topics
           ]},
        concurrency: 3
      ],
      processors: [
        default: [
          concurrency: 10
        ]
      ],
      batchers: [
        default: [
          batch_size: 100,
          batch_timeout: 200,
          concurrency: 10
        ]
      ]
    )
  end

  @impl true
  def handle_message(_, message, _) do
    message
    |> Message.update_data(fn data -> {data, String.to_integer(data) * 2} end)
  end

  @impl true
  def handle_batch(_, messages, _, _) do
    messages
    |> inspect()
    |> Logger.info()

    messages
  end
end
