Elementary OS [https://elementary.io/](https://elementary.io/)
----------------------------------------
A beautiful Linux distribution based on Ubuntu LTS.
Currently on version 0.0.4 Fleya


### More tweaks by install the package. 
```
sudo add-apt-repository ppa:mpstark/elementary-tweaks-daily
sudo apt-get update
sudo apt-get install elementary-tweaks
```

### Adding node.js support 
```
sudo apt-get install nodejs
sudo ln -s `which nodejs` /usr/bin/node
```

### Adding Japanese IME support
```
Add the Fcitx repository: sudo add-apt-repository ppa:fcitx-team/nightly
Update package list: sudo apt-get update
Install fcitx, fcitx-mozc, and im-config: sudo apt-get install fcitx fcitx-mozc im-config
Configure input method by running: im-config
Select "OK", on the dialog box that pops up.
When asked to update user preferences, select "Yes".
Select fcitx from the list, and select "OK".
Restart your computer, and you should see an icon for fcitx in the wingpanel. 
```
