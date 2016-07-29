Ubuntu
----------------------------------------------------------
Upgrade Ubuntu (Ex. 15.04 -> 16.04)
```
sudo do-release-upgrade
```


Swap Keyboard (Manage Keyboard Layout)
-------------------------
```
sudo apt-get install xkeycaps
```

- Right-click > Exchange Key
- Write file

```
xmodmap ~/.xmodmap-`hostname`
``

Advanced Tweaks
---
```
sudo apt-get install compizconfig-settings-manager && ccsm
```

Software Center -> Unity Tweak
Software Center -> Cairo-Dock

### In case shutdown doesn't work
cd ~/.config/autostart
add X-GNOME-Autostart-Delay=20

## Advanced Techniques
--------------------
Disable trackpad when typing 
- syndaemon -i 0.7 d

Show current process of syndaemon
- ps -ef | grep syndaemon
