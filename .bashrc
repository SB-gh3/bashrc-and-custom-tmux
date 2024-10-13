fastfetch 

LFCD="$GOPATH"  # source
LFCD="/home/spencerb/.config/lf/lfcd.sh"                                #  pre-built binary, make sure to use absolute path
if [ -f "$LFCD" ]; then
    source "$LFCD"
fi

#start of custom commands
#!bin/sh

# open custom tmux pane
function tmux() {
 	 ~/tmux.sh
}