#!/system/bin/sh

sleep 30

tinymix "LOL Mux" "Playback"

tinymix "RCV Mux" "Voice Playback"

tinymix "FSM_Amp_Switch" "1" 2>/dev/null
tinymix "aw87xxx_profile_switch_1" "Receiver" 2>/dev/null

touch /data/local/tmp/stereo_mod_active

log -t StereoMod "Stereo enabled"