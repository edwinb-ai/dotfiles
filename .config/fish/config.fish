# Change the name for the z command
set -U Z_CMD "j"
set -gx GOPATH $HOME/go
# Global variables for Singularity images
set -gx LAMMPS $HOME/singularity-images/lammps-29Sep2021.sif

# Add the starship prompt
starship init fish | source
