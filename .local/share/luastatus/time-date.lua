months = {'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'}
widget = {
    plugin = 'timer',
    cb = function()
        local d = os.date('*t')
        return {
            string.format('%d %s', d.day, months[d.month]),
            string.format('%d:%02d', d.hour, d.min),
        }
    end,
}
