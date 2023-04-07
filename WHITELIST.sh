WHITELIST=/data/adb/BATTERYOPT/电池优化白名单.conf

cat "$WHITELIST" | grep -v '^#' | grep "^$1=" | cut -f2 -d '='
whitelist=$(cat "$WHITELIST")
whitelist=`pm list packages -e | sed "s/package:/-/g"`"$whitelist"
dumpsys deviceidle whitelist $whitelist
