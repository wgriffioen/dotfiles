# Unbind the default prefix key and map it to Ctrl-A
unbind C-b
set -g prefix C-a

# Statusbar options
set -g status-left-length 52
set -g status-right-length 451
set -g status-fg white
set -g status-bg colour234
set -g pane-border-fg colour245
set -g pane-active-border-fg colour39
set -g message-fg colour16
set -g message-bg colour221
set -g status-left '#[fg=colour235,bg=colour252,bold] ❐ #S #[fg=colour252,bg=colour238,nobold]⮀#[fg=colour245,bg=colour238,bold] #(whoami) #[fg=colour238,bg=colour234,nobold]⮀'
set -g window-status-format "#[fg=white,bg=colour234] #I #W "
set -g window-status-current-format "#[fg=colour234,bg=colour39]⮀#[fg=colour25,bg=colour39,noreverse,bold] #I ⮁ #W #[fg=colour39,bg=colour234,nobold]⮀"

# Change the hotkeys for splitting windows
unbind %
bind | split-window -h
bind - split-window -v

# It's easier for humans to start counting with one
set -g base-index 1

# Keybindings for resizing
bind -r C-h resize-pane -L
bind -r C-j resize-pane -D
bind -r C-j resize-pane -U
bind -r C-l resize-pane -R
