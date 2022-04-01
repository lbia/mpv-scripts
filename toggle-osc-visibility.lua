require 'mp.options'
local options = {
    visibility = "auto",
}
read_options(options, "osc")
local visibility = false
if options.visibility ~= "never" then
    visibility = true
end

-- do not show message
function toggle_osc_visibility()
    level = mp.get_property("osd-level")
    mp.set_property_number("osd-level", 0)

    visibility = not visibility
    if visibility == false then
        mp.command("script-message osc-visibility never")
        -- mp.command("no-osd script-message osc-visibility never")
    else
        mp.command("script-message osc-visibility always")
        -- mp.command("no-osd script-message osc-visibility always")
    end

    mp.add_timeout(0.01,
        function()
            mp.set_property_number("osd-level", level)
        end
    )
end

mp.add_key_binding("y", "toggle_visibility", toggle_osc_visibility)
