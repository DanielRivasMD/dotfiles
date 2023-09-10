#!/bin/sh

####################################################################################################

# session name
session="catedra"

# create a new tmux session
tmux new-session -d -s $session -n docs

# select pane 1
tmux selectp -t 1
tmux send-keys "cd /Users/drivas/Documents/PostDoc/JMMejiaArangure" C-m

# create a new window
tmux new-window -t $session:2 -n cns
tmux send-keys "cd /Users/drivas/Factorem/CNStumorRisk" C-m

# create a new window
tmux new-window -t $session:3 -n check
tmux send-keys "cd Users/drivas/Factorem" C-m

# return to main window
tmux select-window -t $session:1

# finished setup, attach to the tmux session!
tmux attach-session -t $session

####################################################################################################
