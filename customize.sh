SKIPMOUNT=false
PROPFILE=false
POSTFSDATA=false
LATESTARTSERVICE=false

ui_print "*****************************************"
ui_print "*     POCO M5 Stereo Mod v1.0           *"
ui_print "*****************************************"

ORIG_FILE="/vendor/etc/audio_device_diamond.xml"
BACKUP_FILE="/data/adb/modules/poco_m5_stereo_mod/original_audio_device_diamond.xml"

if [ -f "$ORIG_FILE" ]; then
    ui_print "> Creating backup..."
    mkdir -p /data/adb/modules/poco_m5_stereo_mod
    cp -f "$ORIG_FILE" "$BACKUP_FILE"
    ui_print "  Backup saved"
fi

ui_print "> Installing config..."
mkdir -p $MODPATH/system/vendor/etc

cp -f $MODPATH/audio_device_diamond.xml $MODPATH/system/vendor/etc/audio_device_diamond.xml

set_perm_recursive $MODPATH/system/vendor/etc 0 0 0755 0644

ui_print "> success"

sleep 1

ui_print "> WARNING:"
ui_print "  Earpiece speaker is not designed for high volume"
ui_print "  Recommended volume: 50-80%"

sleep 1

ui_print "> Rebooting required"