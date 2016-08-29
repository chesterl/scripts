#!/bin/sh
tmux new -s WOM -n CONSOLE -d
tmux send-keys -t WOM 'cd ~/oneflare/womo' C-m
tmux send-keys -t WOM 'rails c' C-m

tmux new-window -n RSPEC -t WOM
tmux send-keys -t WOM:2 'cd ~/oneflare/womo' C-m
tmux send-keys -t WOM:2 'guard' C-m

tmux new-window -n SITE -t WOM
tmux send-keys -t WOM:3 'cd ~/oneflare/womo' C-m
tmux send-keys -t WOM:3 'vim' C-m

tmux new-window -n SERVER -t WOM
tmux send-keys -t WOM:4 'cd ~/oneflare/womo' C-m
tmux send-keys -t WOM:4 'rails s' C-m
tmux select-window -t WOM: 3
tmux attach -t WOM


