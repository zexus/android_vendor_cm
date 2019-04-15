#!/system/bin/sh

sleep 10

if [ -d /data/data/$1/ ]; then
  for package in $(find /data/data/$1/ -name '*.unpacked' |sort -n); do
    cp -f $package /mnt/sdcard/Android/data/$1/
  done
  for package in $(find /data/data/$1/ -name '*_dumpdex.dex' |sort -n); do
    cp -f $package /mnt/sdcard/Android/data/$1/
  done
fi

/system/bin/drizzleDumper $1 1

