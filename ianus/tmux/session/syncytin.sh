#!/bin/sh

####################################################################################################

# session name
session="syncytin"

# create a new tmux session
tmux new-session -d -s $session -n remote

# select pane 1
tmux selectp -t 1
tmux send-keys "cd /Users/drivas/Factorem/Syncytin" C-m

# create a new window
tmux new-window -t $session:2 -n log
tmux send-keys "cd /Users/drivas/Factorem/Syncytin" C-m

# create a new window
tmux new-window -t $session:3 -n dev
tmux send-keys "cd /Users/drivas/Factorem/Syncytin" C-m

# return to main window
tmux select-window -t $session:1

# finished setup, attach to the tmux session!
tmux attach-session -t $session

####################################################################################################
