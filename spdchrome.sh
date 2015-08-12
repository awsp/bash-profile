#!/bin/bash

if mount | grep /Volumes/ramdisk > /dev/null; then
  open /Volumes/ramdisk/Google\ Chrome.app
else
  diskutil erasevolume HFS+ 'ramdisk' `hdiutil attach -nomount ram://4194304`

  rm /Users/`whoami`/Library/Caches/Google/Chrome/Default/Cache

  cp -r /Applications/Google\ Chrome.app /Volumes/ramdisk/

  ln -s /Volumes/ramdisk/ /Users/`whoami`/Library/Caches/Google/Chrome/Default/Cache

  open /Volumes/ramdisk/Google\ Chrome.app
fi
