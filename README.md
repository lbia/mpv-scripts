# mpv-show-speed

mpv plugin that shows current playback speed

forked from https://github.com/vflorelle/mpv-scripts

just removed pauses

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

this will still keep the default keybinding

if you want to remove it

	e ignore

# toggle-osc-visibility

mpv plugin that let you toggle osc-visibility

osc-visibility has already cycle mode but it cycle between never / auto / always

this script allow to cycle between just never / always

### installation
copy/link show-speed.lua into mpv scripts folder

### usage
key bind|effect
--------|------
y       |cycle between never / always

### remapping
if you want to remap the default keybinding add to input.conf

```
<new-key> script-binding toggle_osc_visibility
```

this will still keep the default keybinding

if you want to remove it

	y ignore
