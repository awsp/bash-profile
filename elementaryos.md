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

### Adding node.js support (This will install 0.10.x only) 
```
sudo apt-get install nodejs
sudo ln -s `which nodejs` /usr/bin/node
```

From: http://askubuntu.com/questions/672994/how-to-install-nodejs-4-on-ubuntu-15-04-64-bit-edition
```
wget -qO- https://deb.nodesource.com/setup_4.x | sudo bash -
sudo apt-get install --yes nodejs
```


### Adding Japanese IME, Tradional Chinese, Simplified Chinese support
```
Add the Fcitx repository: sudo add-apt-repository ppa:fcitx-team/nightly
Update package list: sudo apt-get update
Install fcitx, fcitx-mozc, and im-config: sudo apt-get install fcitx fcitx-mozc fcitx-table-cangjie5 fcitx-pinyin fcitx-sunpinyin fcitx-googlepinyin im-config
Configure input method by running: im-config
Select "OK", on the dialog box that pops up.
When asked to update user preferences, select "Yes".
Select fcitx from the list, and select "OK".
Restart your computer, and you should see an icon for fcitx in the wingpanel. 
```

##### Extra `fcitx-table-extra`
```
fcitx-table-array30: Flexible Input Method Framework - Array30 table
fcitx-table-array30-big: Flexible Input Method Framework - Array30-Big table
fcitx-table-boshiamy: Flexible Input Method Framework - Boshiamy table
fcitx-table-cangjie-big: Flexible Input Method Framework - Cangjie-Big table
fcitx-table-cangjie3: Flexible Input Method Framework - Cangjie3 table
fcitx-table-cangjie5: Flexible Input Method Framework - Cangjie5 table
fcitx-table-cantonese: Flexible Input Method Framework - Cantonese table
fcitx-table-cantonhk: Flexible Input Method Framework - Cantonhk table
fcitx-table-easy-big: Flexible Input Method Framework - Easy-Big table
fcitx-table-jyutping: Flexible Input Method Framework - Jyutping table
fcitx-table-quick-classic: Flexible Input Method Framework - Quick-Classic table
fcitx-table-quick3: Flexible Input Method Framework - Quick3 table
fcitx-table-quick5: Flexible Input Method Framework - Quick5 table
fcitx-table-scj6: Flexible Input Method Framework - Scj6 table
fcitx-table-stroke5: Flexible Input Method Framework - Stroke5 table
fcitx-table-t9: Flexible Input Method Framework - T9 table
fcitx-table-wu: Flexible Input Method Framework - Wu table
fcitx-table-wubi-large: Flexible Input Method Framework - Wubi-Large table
fcitx-table-zhengma: Flexible Input Method Framework - Zhengma table
fcitx-table-zhengma-large: Flexible Input Method Framework - Zhengma-Large table
```




### Adding supports for UI for advanced searching for files
```
sudo apt-get install gnome-search-tool
sudo touch /usr/share/contractor/find.contract
sudo vi /usr/share/contractor/find.contract
```

```
[Contractor Entry]
Name=Advanced Search...
Description=Find files
MimeType=inode;application/x-sh;application/x-executable;
Exec=gnome-search-tool --path=%f %U
```


### Adding JRE
```
sudo apt-get install icedtea-7-plugin openjdk-7-jre
```

### Adding Kirada (Drawing)
```
sudo apt-get install krita
```

### Adding vLC
```
sudo apt-get install vlc
```






