#!/system/bin/sh

sleep 5

if [ -d /data/data/$1/ ]; then
  for package in $(find /data/data/ -name '*.unpacked' |sort -n); do
    cp -f $package /mnt/sdcard/Android/data/$1/
  done
fi

/system/bin/drizzleDumper $1 1




