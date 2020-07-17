# ==============================================

# Julia two-tab session [ monitor julia ]
tmux new-session \
  -s 'Julia' \
  -c "$HOME" \
  -n 'monitor' \; \
  split-window -v -l 20% \; \
  send-keys 'pier cpu' C-m \; \
  select-pane -t 1 \; \
  new-window -n 'julia' \; \
  send-keys 'Julia' C-m \; \
  select-window -t 1 \;

# ==============================================
