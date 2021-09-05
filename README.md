# Blanche

I'm exploring event design, event-driven system design, event-driven service design, and elixir. See [Resources](#resources) for links to tutorials, resources, etc. that I used in building the project. 

# Use asdf to manage language-level dependencies - erlang, otp, elixir, node ( node only required for npm to fetch deps, not required for phoenix build. phoenix uses esbuild ) 

- Use git to install asdf http://asdf-vm.com/guide/getting-started.html#_2-download-asdf
- install elixir, erlang, and nodejs plugins 
- run asdf install in this project directory at the same level as .tool-versions to install and use the stuff listed in .tool-versions

# Build a Prod Release 

```sh
chmod a+x build.sh
./build.sh
```
# Use the pre-commit hook to lint and format your files 

```sh
cp hooks/pre-commit .git/hooks/pre-commit
chmod +x .git/hooks/pre-commit
```
# Resources
- Sergio Tapia's [Phoenix 1.6.0 LiveView + esbuild + Tailwind JIT + AlpineJS - A brief tutorial.](https://sergiotapia.com/phoenix-160-liveview-esbuild-tailwind-jit-alpinejs-a-brief-tutorial)
- Ben Stopford's [Book: Designing Event Driven Systems](http://www.benstopford.com/2018/04/27/book-designing-event-driven-systems/)

# Pheonix Generated README 

## To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

### Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
