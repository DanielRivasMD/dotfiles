#!/bin/sh

####################################################################################################

# session name
session="mind"

# create a new tmux session
tmux new-session -d -s $session -n mind

# Select pane 1
tmux selectp -t 1
tmux send-keys "cd /Users/drivas/Factorem/MindReader" C-m

# create a new window
tmux new-window -t $session:2 -n eeg
tmux send-keys "cd /Users/drivas/Factorem/EEG" C-m

# create a new window
tmux new-window -t $session:3 -n dev
tmux send-keys "cd /Users/drivas/Factorem/EEG" C-m

# return to main vim window
tmux select-window -t $session:1

# Finished setup, attach to the tmux session!
tmux attach-session -t $session

####################################################################################################
