# mpv-show-speed

mpv plugin that shows current playback speed

forked from https://github.com/vflorelle/mpv-scripts

just removed pauses

## speed
always show current playback speed on the OSD

### installation
copy/link show-speed.lua into mpv scripts folder

### usage
key bind|effect
--------|------
e       |toggle script on/off

### remapping
if you want to remap the default keybinding add to input.conf

```
<new-key> script-binding show_current_speed
```

this will still keep the default key binding

if you want to remove it

	e ignore
