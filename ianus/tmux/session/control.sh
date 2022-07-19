#!/bin/sh

####################################################################################################

# session name
session="control"

# create a new tmux session
tmux new-session -d -s $session -n monitor

# Select pane 1
tmux selectp -t 1
tmux send-keys "cd /Users/drivas/" C-m

# create a new window
tmux new-window -t $session:2 -n download
tmux send-keys "cd /Users/drivas/Downloads" C-m

# create a new window
tmux new-window -t $session:3 -n factorem
tmux send-keys "cd /Users/drivas/Factorem" C-m

# return to main vim window
tmux select-window -t $session:1

# Finished setup, attach to the tmux session!
tmux attach-session -t $session

####################################################################################################
