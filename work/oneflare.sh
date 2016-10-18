#!/bin/sh
tmux new -s work -n console -d
tmux send-keys -t work 'cd ~/oneflare/site' C-m
tmux send-keys -t work 'rails c' C-m

tmux new-window -n test -t work
tmux send-keys -t work:2 'cd ~/oneflare/site' C-m
tmux send-keys -t work:2 'guard' C-m

tmux new-window -n site -t work
tmux send-keys -t work:3 'cd ~/oneflare/site' C-m
tmux send-keys -t work:3 'vim' C-m

tmux new-window -n bash -t work
tmux send-keys -t work:4 'cd ~/oneflare/site' C-m
tmux select-window -t work:3
tmux attach -t work


