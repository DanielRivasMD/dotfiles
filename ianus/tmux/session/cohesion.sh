#!/bin/sh

####################################################################################################

# session name
session="cohesion"

# create a new tmux session
tmux new-session -d -s $session -n git

# select pane 1
tmux selectp -t 1
tmux send-keys "cd /Users/drivas/Kukulkan/GainLine/repo/Cohesion" C-m

# create a new window
tmux new-window -t $session:2 -n dev
tmux send-keys "cd /Users/drivas/Kukulkan/GainLine/repo/Cohesion" C-m

# create a new window
tmux new-window -t $session:3 -n check
tmux send-keys "cd /Users/drivas/Kukulkan/GainLine/repo/Cohesion" C-m

# return to main window
tmux select-window -t $session:1

# finished setup, attach to the tmux session!
tmux attach-session -t $session

####################################################################################################
