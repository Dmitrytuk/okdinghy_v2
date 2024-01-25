#!/bin/bash

session="Dev"

tmux new-session -s $session -n Django -d 
tmux send-keys -t $session:0.0 'cd /home/dmitry/Dev/OkDinghy_v2/backend/"Okdinghy v2 django project/"'  Enter
tmux send-keys -t $session:0.0 'poetry shell'  Enter
tmux send-keys -t $session:0.0 'cd core'  Enter
tmux send-keys -t $session:0.0 'clear'  Enter
tmux send-keys -t $session:0.0 'lvim' Enter

tmux attach-session -t $session
