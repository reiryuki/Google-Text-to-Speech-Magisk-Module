mount -o rw,remount /data
MODPATH=${0%/*}

# log
exec 2>$MODPATH/debug-pfsd.log
set -x

# permission
DIRS=`find $MODPATH/vendor\
           $MODPATH/system/vendor -type d`
for DIR in $DIRS; do
  chown 0.2000 $DIR
done
chcon -R u:object_r:system_lib_file:s0 $MODPATH/system/lib*
chcon -R u:object_r:vendor_configs_file:s0 $MODPATH/system/odm/etc
if [ -L $MODPATH/system/vendor ]\
&& [ -d $MODPATH/vendor ]; then
  chcon -R u:object_r:vendor_file:s0 $MODPATH/vendor
  chcon -R u:object_r:vendor_configs_file:s0 $MODPATH/vendor/etc
  chcon -R u:object_r:vendor_configs_file:s0 $MODPATH/vendor/odm/etc
else
  chcon -R u:object_r:vendor_file:s0 $MODPATH/system/vendor
  chcon -R u:object_r:vendor_configs_file:s0 $MODPATH/system/vendor/etc
  chcon -R u:object_r:vendor_configs_file:s0 $MODPATH/system/vendor/odm/etc
fi

# cleaning
FILE=$MODPATH/cleaner.sh
if [ -f $FILE ]; then
  . $FILE
  mv -f $FILE $FILE.txt
fi





