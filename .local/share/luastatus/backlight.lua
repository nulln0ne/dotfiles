widget = luastatus.require_plugin('backlight-linux').widget{
    cb = function(level)
        if level ~= nil then
            return string.format('[BRT:%3.0f%%]', level * 100)
        end
    end,
}
