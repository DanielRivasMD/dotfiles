#!/bin/sh

####################################################################################################

# session name
session="control"

# create a new tmux session
tmux new-session -d -s $session -n monitor

# select pane 1
tmux selectp -t 1
tmux send-keys "cd /Users/drivas/" C-m
tmux send-keys "tock" C-m
tmux split-window -v
tmux send-keys "cd /Users/drivas/" C-m
tmux send-keys "btm" C-m
tmux resize-pane -U 15
tmux selectp -t 1
tmux split-window -h

# create a new window
tmux new-window -t $session:2 -n archive
tmux send-keys "cd /Users/drivas/.archive" C-m
tmux split-window -v
tmux send-keys "cd /Users/drivas/.archive" C-m

# create a new window
tmux new-window -t $session:3 -n download
tmux send-keys "cd /Users/drivas/Downloads" C-m

# create a new window
tmux new-window -t $session:4 -n factorem
tmux send-keys "cd /Users/drivas/Factorem" C-m
tmux split-window -v
tmux send-keys "cd /Users/drivas/Factorem" C-m

# return to main window
tmux select-window -t $session:1

# finished setup, attach to the tmux session!
tmux attach-session -t $session

####################################################################################################
