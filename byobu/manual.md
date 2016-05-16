Manual
----------------
## Split Screen
Horizontal

`Shift` + `F2`

Vertical
`Ctrl` + `F2`

Switch Screen
`Shift` + [Arrow Keys]


## Key bindings
Append commands to `f-keys.tmux` file located at 
`/usr/share/byobu/keybindings`


Key Bindings (split screen size controls) (put into f-keys.tmux)
nd-key -n M-S-Up resize-pane -U
bind-key -n C-M-u resize-pane -U
bind-key -n M-S-Down resize-pane -D
bind-key -n C-M-d resize-pane -D
bind-key -n M-S-Left resize-pane -L
bind-key -n C-M-l resize-pane -L
bind-key -n M-S-Right resize-pane -R
bind-key -n C-M-r resize-pane -R```

```

Key Bindings (split screen) (put into f-keys.tmux)
```
bind-key -n C-F2 display-panes \; split-window -h
bind-key -n C-M-h display-panes \; split-window -h
bind-key -n S-F2 display-panes \; split-window -v
bind-key -n C-M-v display-panes \; split-window -v
bind-key -n C-S-F2 new-session
bind-key -n C-M-s new-session
```

