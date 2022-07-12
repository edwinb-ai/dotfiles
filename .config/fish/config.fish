# Change the name for the z command
set -U Z_CMD "j"
set -gx GOPATH $HOME/go
# Global variables for Singularity images
set -gx LAMMPS $HOME/singularity-images/lammps-29Sep2021.sif

# Add the starship prompt
starship init fish | source

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/edwin/miniforge3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

