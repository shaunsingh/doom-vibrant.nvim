local colors = require('doom.colors')

local doom = {}

doom.normal = {
	a = {fg = colors.doom0_gui, bg = colors.doom4_gui, gui = 'bold'},
	b = {fg = colors.doom4_gui, bg = colors.doom10_gui},
	c = {fg = colors.doom4_gui, bg = colors.doom1_gui},
}

doom.insert = {
	a = {fg = colors.doom0_gui, bg = colors.doom14_gui, gui = 'bold'},
	b = {fg = colors.doom4_gui, bg = colors.doom10_gui},
}

doom.visual = {
	a = {fg = colors.doom0_gui, bg = colors.doom9_gui, gui = 'bold'},
	b = {fg = colors.doom4_gui, bg = colors.doom10_gui},
}

doom.replace = {
	a = {fg = colors.doom0_gui, bg = colors.doom11_gui, gui = 'bold'},
	b = {fg = colors.doom4_gui, bg = colors.doom10_gui},
}

doom.command = {
	a = {fg = colors.doom0_gui, bg = colors.doom15_gui, gui = 'bold'},
	b = {fg = colors.doom4_gui, bg = colors.doom10_gui},
}

doom.indoom10_gui = {
  a = {fg = colors.doom1_gui, bg = colors.doom0_gui, gui = 'bold'},
  b = {fg = colors.doom1_gui, bg = colors.doom0_gui},
  c = {fg = colors.doom1_gui, bg = colors.doom1_gui}
}

return doom
