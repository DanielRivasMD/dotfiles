# ==============================================

# three-tab remote anchor [ monitor channel remote ]
tmux new-session \
  -s 'Bianca' \
  -c "$HOME" \
  -n 'monitor' \; \
  split-window -v -l 20% \; \
  send-keys 'pier cpu' C-m \; \
  select-pane -t 1 \; \
  new-window -n 'channel' \; \
  send-keys 'pier sftp-bianca' C-m \; \
  new-window -n 'remote' \; \
  send-keys 'pier ssh-bianca' C-m \; \
  select-window -t 1 \;

# ==============================================
