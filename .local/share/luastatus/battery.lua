widget = luastatus.require_plugin('battery-linux').widget{
    period = 2,
    cb = function(t)
        local symbol = ({
            Charging    = '↑',
            Discharging = '↓',
        })[t.status] or ' '
        return {
            string.format('[BAT:%3d%%%s]', t.capacity, symbol),
        }
    end,
}
