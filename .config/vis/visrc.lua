require('vis')

vis.events.subscribe(vis.events.INIT, function()
	vis:command('set theme solarized-dark')
end)

vis.events.subscribe(vis.events.WIN_OPEN, function(win)
    vis:command('set rnu')
    vis:command('set tw 4')
    vis:command('set et on')
    vis:command('set ai off')
    vis:command('set cul on')
end) 
