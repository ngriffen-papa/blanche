# Blanche

I'm exploring event design, event-driven system design, event-driven service design, and elixir
# Use asdf to manage language-level dependencies - erlang, otp, elixir 

- Use git to install asdf http://asdf-vm.com/guide/getting-started.html#_2-download-asdf
- install eliixr and erlang plugins 
- run asdf install in this project directory at the same level as .tool-versions to install and use the stuff listed in .tool-versions

# Use the pre-commit hook to lint and format your files 

- cp hooks/pre-commit .git/hooks/pre-commit
- chmod +x .git/hooks/pre-commit

# To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
