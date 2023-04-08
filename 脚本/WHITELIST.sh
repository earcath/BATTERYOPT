WHITELIST=/data/adb/BATTERYOPT/电池优化白名单.prop

whitelist=$(cat "$WHITELIST" | grep -v '^#' | cut -f2 -d '=')
whitelist=`pm list packages -e | sed "s/package:/-/g"`"$whitelist"
dumpsys deviceidle whitelist $whitelist
