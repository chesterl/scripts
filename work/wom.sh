#!/bin/sh
tmux new -s wom -n console -d
tmux send-keys -t wom 'cd ~/oneflare/womo' C-m
tmux send-keys -t wom 'rails c' C-m

tmux new-window -n test -t wom
tmux send-keys -t wom:2 'cd ~/oneflare/womo' C-m
tmux send-keys -t wom:2 'guard' C-m

tmux new-window -n site -t wom
tmux send-keys -t wom:3 'cd ~/oneflare/womo' C-m
tmux send-keys -t wom:3 'vim' C-m

tmux new-window -n server -t wom
tmux send-keys -t wom:4 'cd ~/oneflare/womo' C-m
tmux send-keys -t wom:4 'rails s' C-m
tmux select-window -t wom:3
tmux attach -t wom


