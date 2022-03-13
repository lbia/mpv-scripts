local running = false
local timer

local function message_speed()
    local current_speed = mp.get_property("speed")
    mp.osd_message("Speed: "..("%.2f"):format(math.floor(current_speed * 1000) / 1000), 1)
end

function show_current_speed()
    running = not running
    if running then
        message_speed()
        timer = mp.add_periodic_timer(1, message_speed)
    else
        mp.osd_message("", 1)
        timer:stop()
    end
end

mp.add_key_binding("e", "show_current_speed", show_current_speed)
