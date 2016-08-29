#!/bin/sh
tmux new -s WORK -n CONSOLE -d
tmux send-keys -t WORK 'cd ~/oneflare/site' C-m
tmux send-keys -t WORK 'rails c' C-m

tmux new-window -n RSPEC -t WORK
tmux send-keys -t WORK:2 'cd ~/oneflare/site' C-m
tmux send-keys -t WORK:2 'guard' C-m

tmux new-window -n SITE -t WORK
tmux send-keys -t WORK:3 'cd ~/oneflare/site' C-m
tmux send-keys -t WORK:3 'vim' C-m

tmux new-window -n Bash -t WORK
tmux send-keys -t WORK:4 'cd ~/oneflare/site' C-m
tmux select-window -t WORK: 3
tmux attach -t WORK


