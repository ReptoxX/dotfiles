###------------------- Tmux Merge Panel
function func_tmuxSession() {
    tmux new-session \; \
        split-window -h \; \
        split-window -h \; \
        split-window -v -p 66 \; \
        split-window -v \; \
        select-pane -t 1 \; \
        split-window -v -p 66 \; \
        split-window -v \; \
        select-pane -t 0 \; \
        split-window -v -p 40 \; \
        split-window -h \; \
        select-pane -t 1 \; send-keys 'ssh testserver' C-m \; \
        select-pane -t 2 \; send-keys 'ssh testproxy' C-m \; \
        select-pane -t 3 \; send-keys 'ssh uhuru01' C-m \; \
        select-pane -t 4 \; send-keys 'ssh uhuru04' C-m \; \
        select-pane -t 5 \; send-keys 'ssh uhuru07' C-m \; \
        select-pane -t 6 \; send-keys 'ssh uhuru02' C-m \; \
        select-pane -t 7 \; send-keys 'ssh uhuru06' C-m \; \
        select-pane -t 8 \; send-keys 'ssh proxy01' C-m \;
}

alias merger='func_tmuxSession'
