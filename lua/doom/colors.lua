local doom = {
  --16 colors
  doom0_gui = "#242730"        ,
  doom1_gui = "#2a2e38"        ,
  doom2_gui = "#484854"        ,
  doom3_gui = "#62686E"        ,
  doom3_gui = "#62686E" ,
  doom4_gui = "#9ca0a4"        ,
  doom5_gui = "#5D656B"        ,
  doom6_gui = "#bbc2cf"        ,
  doom7_gui = "#4db5bd"        ,
  doom8_gui = "#5cEfFF"        ,
  doom9_gui = "#51afef"        ,
  doom10_gui = "#1f5582"       ,
  doom11_gui = "#ff665c"       ,
  doom12_gui = "#e69055"       ,
  doom13_gui = "#FCCE7B"       ,
  doom14_gui = "#7bc275"       ,
  doom15_gui = "#C57BDB"       ,
  none =          'NONE'
}

-- Enable contrast sidebars, floating windows and popup menus
if vim.g.doom_contrast == true then
  doom.sidebar = doom.doom1_gui
  doom.float = doom.doom1_gui
else
  doom.sidebar = doom.doom0_gui
  doom.float = doom.doom0_gui
end

if vim.g.doom_cursorline_transparent == true then
  doom.cursorlinefg = doom.doom0_gui
else
  doom.cursorlinefg = doom.doom1_gui
end

return doom
