Crouton
-----------------------------
[Cheat Sheet](https://github.com/dnschneid/crouton/wiki/Crouton-Command-Cheat-Sheet)


#### Installing Ubuntu 16.04
```sh
sudo sh couton -r xenial -t xiwi
sudo enter-chroot -n xenial
```


#### Force quit
```sh
sudo unmount-chroot -f precise
```

press `k` to force kill chroot


#### Running Servers
##### Note: installing DBMS such as MySQL require installing require doing the following 2 things, 

Install IPTables
```sh
sudo apt-get install iptables
```


Edit the `/etc/rc.local` file
```sh
' Optional, if you need to use Apache
/etc/init.d/apache2 start

' MySQL
export HOME=/etc/mysql
umask 007
[ -d /var/run/mysqld ] || install -m 755 -o mysql -g root -d /var/run/mysqld
/usr/sbin/mysqld &
```



