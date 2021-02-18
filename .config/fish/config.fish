# Change the name for the z command
set -U Z_CMD "j"
set -gx GOPATH $HOME/go

# Add the starship prompt
starship init fish | source
