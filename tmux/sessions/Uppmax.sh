# ==============================================

# three-tab remote anchor [ monitor channel remote ]
tmux new-session \
  -s 'Uppmax' \
  -c "$HOME" \
  -n 'monitor' \; \
  split-window -v -l 20% \; \
  send-keys 'pier cpu' C-m \; \
  select-pane -t 1 \; \
  new-window -n 'channel' \; \
  send-keys 'pier sftpUpp' C-m \; \
  new-window -n 'remote' \; \
  send-keys 'pier sshUpp' C-m \; \
  select-window -t 1 \;

# ==============================================
