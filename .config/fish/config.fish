set -gx GOPATH $HOME/go

# Add the starship prompt
starship init fish | source
# Add zoxide
zoxide init fish | source

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/edwin/miniforge3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

