#!/bin/sh
sessname="tmux"

# Create a new session named "$sessname", and run command
tmux new-session -d -s "$sessname"
tmux send-keys -t "$sessname" "nvim" Enter

# Open window called btop
tmux new-window -t "$sessname" -n "btop"
tmux send-keys -t "$sessnname:btop" "btop" Enter

# Open window called bash
tmux new-window -t "$sessname" -n "bash"

# Attach session
tmux attach -t tmux