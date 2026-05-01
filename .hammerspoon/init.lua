-- ==============================
-- Hammerspoon Config
-- ==============================

-- Без анимации (мгновенные изменения)
hs.window.animationDuration = 0

-- Debug при перезагрузке
print("Hammerspoon loaded at " .. os.date())

-- ==============================
-- Hotkey modifiers
-- ==============================

local mash = { "alt" }
local mashShift = { "alt", "shift" }

-- ==============================
-- Launch Ghostty
-- ==============================

hs.hotkey.bind(mashShift, "return", function()
	hs.application.launchOrFocus("Ghostty")
end)

-- ==============================
-- Helpers
-- ==============================

local function focused()
	return hs.window.focusedWindow()
end

local function setFrame(x, y, w, h)
	local win = focused()
	if not win then
		return
	end
	local screen = win:screen():frame()
	win:setFrame({
		x = screen.x + x,
		y = screen.y + y,
		w = w,
		h = h,
	})
end

-- ==============================
-- Move window to screen edges (Option + hjkl)
-- ==============================

hs.hotkey.bind(mash, "h", function()
	local win = focused()
	if not win then
		return
	end
	local s = win:screen():frame()
	local f = win:frame()
	f.x = s.x
	win:setFrame(f)
end)

hs.hotkey.bind(mash, "l", function()
	local win = focused()
	if not win then
		return
	end
	local s = win:screen():frame()
	local f = win:frame()
	f.x = s.x + s.w - f.w
	win:setFrame(f)
end)

hs.hotkey.bind(mash, "k", function()
	local win = focused()
	if not win then
		return
	end
	local s = win:screen():frame()
	local f = win:frame()
	f.y = s.y
	win:setFrame(f)
end)

hs.hotkey.bind(mash, "j", function()
	local win = focused()
	if not win then
		return
	end
	local s = win:screen():frame()
	local f = win:frame()
	f.y = s.y + s.h - f.h
	win:setFrame(f)
end)

-- ==============================
-- Half screen (Option + Shift + hjkl)
-- ==============================

hs.hotkey.bind(mashShift, "h", function()
	local win = focused()
	if not win then
		return
	end
	local s = win:screen():frame()
	setFrame(0, 0, s.w / 2, s.h)
end)

hs.hotkey.bind(mashShift, "l", function()
	local win = focused()
	if not win then
		return
	end
	local s = win:screen():frame()
	setFrame(s.w / 2, 0, s.w / 2, s.h)
end)

hs.hotkey.bind(mashShift, "k", function()
	local win = focused()
	if not win then
		return
	end
	local s = win:screen():frame()
	setFrame(0, 0, s.w, s.h / 2)
end)

hs.hotkey.bind(mashShift, "j", function()
	local win = focused()
	if not win then
		return
	end
	local s = win:screen():frame()
	setFrame(0, s.h / 2, s.w, s.h / 2)
end)

-- ==============================
-- Reasonable size + center (Option + Shift + c)
-- ==============================

hs.hotkey.bind(mashShift, "c", function()
	local win = focused()
	if not win then
		return
	end
	local s = win:screen():frame()
	local w = s.w * 0.6
	local h = s.h * 0.7
	win:setFrame({
		x = s.x + (s.w - w) / 2,
		y = s.y + (s.h - h) / 2,
		w = w,
		h = h,
	})
end)

-- ==============================
-- Fullscreen (tile-style, не macOS native)
-- Option + Shift + f
-- ==============================

hs.hotkey.bind(mashShift, "f", function()
	local win = focused()
	if not win then
		return
	end
	win:maximize()
end)
