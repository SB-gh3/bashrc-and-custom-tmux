fastfetch 

LFCD="$GOPATH"  # source
LFCD="/home/spencerb/.config/lf/lfcd.sh"                                #  pre-built binary, make sure to use absolute path
if [ -f "$LFCD" ]; then
    source "$LFCD"
fi

#start of custom commands

#!bin/sh

# open custom tmux pane
function tmux() 
{
 	 ~/tmux.sh
}

# Run rustGraph - Graphing calculator I made in Rust https://github.com/SB-gh3/Rust-Graphing-Calculator
function rustGraph
{
    cd /home/spencerb/Documents/Rust-Development/graph-plotting
    cargo r 
    cd -
}