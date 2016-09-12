Elementary OS [https://elementary.io/](https://elementary.io/)
----------------------------------------
A beautiful Linux distribution based on Ubuntu LTS.
Currently on version 0.0.4 Fleya


### More tweaks by install the package. 
```sh
[Freya] sudo add-apt-repository ppa:mpstark/elementary-tweaks-daily
[Loki] sudo add-apt-repository ppa:philip.scott/elementary-tweaks
sudo apt-get update
sudo apt-get install elementary-tweaks
```

### Adding node.js support (This will install 0.10.x only) 
##### Using `apt-get` with offical
```sh
sudo apt-get install nodejs
sudo ln -s `which nodejs` /usr/bin/node
```

##### Using `apt-get` with custom source
From: http://askubuntu.com/questions/672994/how-to-install-nodejs-4-on-ubuntu-15-04-64-bit-edition
```sh
wget -qO- https://deb.nodesource.com/setup_4.x | sudo bash -
sudo apt-get install --yes nodejs
```

##### Using `n` [Recommended]
```sh
curl -L http://git.io/n-install | bash
```
Restart shell


##### Using `nvm` [Recommended]
```sh
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.1/install.sh | bash
```



### G++, gcc, make
```sh
sudo apt-get install build-essential
```


#### Apache
```sh
apt-get install apache2
```



#### PHP
```sh
apt-get install php5-mysql php5-sqlite php5-curl php5-cgi php5-cli php5-curl php5-odbc php5-xdebug php5-mongo php5-imap php5-memcache
```


#### MySQL
```sh
apt-get install mysql-server libapache2-mod-auth-mysql php5-mysql
```



### Screen Resolution (Virtual Box)
Menu bar -> Devices -> Insert Guest Additions CD image
```sh
sh ./VBoxLinuxAdditions.run
```

Restart -> Display -> Change resolution

#### Custom Screen Resolution
```sh
# Generate Modeline
cvt 1440 900 60


sudo xrandr --newmode [whatever you get from the above command]

sudo xrandr --addmode VGA-0 1440x900_60.00
```
PS: xrandr is not retained after reboot. To enable it from boot, activate it via `gnome-session-properties` and add the `eosa_resolution.sh` file





### Vim
```sh
sudo apt-get install vim
```

[Optional]
```sh
sudo rm /usr/bin/vi
sudo ln -s /usr/bin/vim /usr/bin/vi
```



### Mac OS X Behavior
- Map Ctrl key to Alt
System Settings -> Keyboard -> Options -> 
    Check `Control is mapped to Alt keys, Alt is mapped to Win Keys`

- Re-map Alt-Tab to Ctrl-Tab 
System Settings -> Keyboard -> Shortcuts -> Windows -> Switch Windows, Switch Windows Backwards, Show all windows



#### Kupfer - QuickSilver-like Quick Launcher (Ctrl+Space)
```sh
$ sudo apt-get install kupfer
```


### VirtualBox Shared Folder (if receive access denied in shared folder)
```
sudo usermod -aG vboxsf $(whoami)
```


### Adding Japanese IME, Tradional Chinese, Simplified Chinese support
```sh
Add the Fcitx repository: sudo add-apt-repository ppa:fcitx-team/nightly
Update package list: sudo apt-get update
Install fcitx, fcitx-mozc, and im-config: sudo apt-get install fcitx fcitx-mozc fcitx-table-cangjie5 fcitx-pinyin fcitx-sunpinyin fcitx-googlepinyin im-config
Configure input method by running: im-config
Select "OK", on the dialog box that pops up.
When asked to update user preferences, select "Yes".
Select fcitx from the list, and select "OK".
Restart your computer, and you should see an icon for fcitx in the wingpanel. 

For Japanese IME
- Add new input method, search by `moc` 

For Chinese IME
- ADd new input method, search by `cangjie`


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
```sh
sudo apt-get install gnome-search-tool
sudo touch /usr/share/contractor/find.contract
sudo vi /usr/share/contractor/find.contract
```

```sh
[Contractor Entry]
Name=Advanced Search...
Description=Find files
MimeType=inode;application/x-sh;application/x-executable;
Exec=gnome-search-tool --path=%f %U
```


### Adding JRE
```sh
sudo apt-get install icedtea-7-plugin openjdk-7-jre
```

### Adding Kirada (Drawing)
```sh
sudo apt-get install krita
```

### Adding VLC
```sh
sudo apt-get install vlc
```

### GParted
Used for partition
```sh
sudo apt-get install gparted
```


### Disk Utility
```sh
sudo apt-get install gnome-disk-utility
```


### Aptitude CLI
```sh
sudo apt-get install aptitude
```


### Chrome Browser
```sh
sudo apt-get install chromium-browser
```


### Task Manager
```sh
sudo apt-get install gnome-system-monitor
```

### Multi-task in CLI
```sh
sudo apt-get install byobu
```

Byobu has keymapping located at `/usr/share/byobu/keybindings/f-keys.tmux`, so for chromebook, it's recommended to remap those keys.

### Java JDK (from Oracle)
```sh
sudo apt install python-software-properties
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt install oracle-java8-installer
sudo update-alternatives --config java
```

Set `CLASSPATH`
```
export CLASSPATH=/usr/bin/...:$CLASSPATH
```

Find out where the JDK is intalled. 
```sh
readlink -f $(which java)
```
