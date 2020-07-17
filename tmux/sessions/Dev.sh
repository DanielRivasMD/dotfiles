# ==============================================

# three-tab development [ monitor zsh zsh ]
tmux new-session \
  -s 'Dev' \
  -c "$HOME" \
  -n 'monitor' \; \
  split-window -v -l 20% \; \
  send-keys 'pier cpu' C-m \; \
  select-pane -t 1 \; \
  split-window -h -l 25% -c "/Users/drivas/AncientBackup/Songs" \; \
  select-pane -t 1 \; \
  new-window -n 'zsh' \; \
  send-keys C-m \; \
  new-window -n 'zsh' \; \
  send-keys C-m \; \
  select-window -t 1 \;

# ==============================================
