#!/bin/sh
tmux new -s SERVER -n REDIS -d
tmux send-keys -t SERVER 'mysql.server restart' C-m
tmux send-keys -t SERVER 'cd ~/oneflare/site' C-m
tmux send-keys -t SERVER 'redis-server' C-m

tmux new-window -n Elastic -t SERVER
tmux send-keys -t SERVER:2 'cd ~/oneflare/site' C-m
tmux send-keys -t SERVER:2 'elasticsearch' C-m

tmux new-window -n SERVER -t SERVER
tmux send-keys -t SERVER:3 'cd ~/oneflare/site' C-m
tmux send-keys -t SERVER:3 'rails s' C-m

tmux select-window -t SERVER:3
tmux attach -t SERVER

