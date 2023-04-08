#!/system/bin/sh
MODDIR=${0%/*}

export PATH="/system/bin:/system/xbin:/vendor/bin:$(magisk --path)/.magisk/busybox:$PATH"
crond -c $MODDIR/cron.d
