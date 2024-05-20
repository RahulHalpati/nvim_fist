vim.cmd("let g:netrw_liststyle = 3") -- show the tree like structure in Explorer
-- ivim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt -- option var for vim option

opt.relativenumber = true -- this line for show relative numbers 
opt.number = true -- this one for the show absolute line number or current line number


opt.tabstop = 2 -- size of tab is equal to two tabs
opt.shiftwidth = 2 -- continue 
opt.expandtab = true -- expand tab to space
opt.autoindent = true -- copy the current indent to new line


-- opt.wrap = false 

opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- trun the case sennce when search for mix case


opt.cursorline = true -- highlight the current line

opt.termguicolors = true -- auto adapt to the color scheme of the gui

opt.background = 'dark'

opt.signcolumn = "yes"

opt.swapfile = false
