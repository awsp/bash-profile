Nginx server block
```
server {
  listen 80; 
  listen   [::]:80 default_server ipv6only=on;
  server_name site.app;
  root /path/to/site*;
  index index.php index.html index.htm;
  location ~ \.php$ {
    include fastcgi.conf;
    fastcgi_pass  127.0.0.1:9000;
    fastcgi_index index.php;
    fastcgi_param SCRIPT_FILENAME $document_root/$fastcgi_script_name;
  }   
}
```


.bash_profile
```
alias nginx.start='launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.php55.plist'
alias nginx.stop='launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.php55.plist'

alias mysql.start='launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist'
alias mysql.stop='launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist'
```
