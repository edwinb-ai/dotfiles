# Change the name for the z command
set -U Z_CMD "j"
set -g fish_user_paths $fish_user_paths $HOME/.cargo/env
set -g fish_user_paths $fish_user_paths $HOME/.dotbare

# Add the starship prompt
starship init fish | source
