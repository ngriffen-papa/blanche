defmodule Blanche.Broadway do
  @moduledoc """
  Mostly-boilerplate configuration for Broadway, an external dependency we're using to process messages / events and interface with Kafka
  See https://hexdocs.pm/broadway/apache-kafka.html#define-the-pipeline-configuration
  """
  use Broadway

  alias Broadway.Message

  require Logger

  @dialyzer {:no_return, start_link: 1}

  def start_link(_opts) do
    producer_module = Application.fetch_env!(:blanche, :producer_module)

    Broadway.start_link(__MODULE__,
      name: __MODULE__,
      producer: [
        module: producer_module,
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
