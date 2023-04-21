#!/system/bin/sh
MODDIR=${0%/*}
WHITELIST=/data/adb/BATTERYOPT/电池优化白名单.prop

if [ ! -f $WHITELIST ]; then
	mkdir /data/adb/BATTERYOPT
	touch $WHITELIST
	echo "#加入包名，前面加＋号，如 +com.itisaapp.and" >$WHITELIST
fi

export PATH="/system/bin:/system/xbin:/vendor/bin:$(magisk --path)/.magisk/busybox:$PATH"
crond -c $MODDIR/cron.d
