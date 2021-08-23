# my_little_event_manager

I'm exploring event design, event-driven system design, event-driven service design, and elixir

# Use asdf to manage language-level dependencies - erlang, otp, elixir 

- Use git to install asdf http://asdf-vm.com/guide/getting-started.html#_2-download-asdf
- install eliixr and erlang plugins 
- run asdf install in this project directory at the same level as .tool-versions to install and use the stuff listed in .tool-versions

# Use the pre-commit hook to lint and format your files 

- cp hooks/pre-commit .git/hooks/pre-commit
- chmod +x .git/hooks/pre-commit
