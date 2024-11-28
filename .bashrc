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

#nix-clean custom command - Tyler Hardin
function nix-clean () 
{
    sudo nix-env --delete-generations old
    sudo nix-store --gc
    sudo nix-channel --update
    sudo nix-env -u --always
    for link in /nix/var/nix/gcroots/auto/*
    do
    sudo rm $(readlink "$link")
    done
    sudo nix-collect-garbage -d
}
export -f nix-clean;