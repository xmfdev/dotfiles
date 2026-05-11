local opt = vim.opt

-- General
--
-- relativenumber: Enables relative numbers.
-- number: Enables numbers.
-- wrap: Disable line wrapping.
-- cursorline: Enable cursor line.
-- backspace: Allow backspace to delete indentation.
-- clipboard: Use system clipboard.
-- mouse: Disable mouse inside neovim.
opt.relativenumber = true
opt.number = true
opt.wrap = false
opt.cursorline = true
opt.backspace = "indent,eol,start"
opt.clipboard:append("unnamedplus")
opt.mouse = ""

-- Tabs & Indentation
--
-- tabstop: How many spaces a tab is equal to.
-- shiftwidth: How many spaces a level of indentation is equal to.
-- expandtab: Convert tabs into spaces.
-- autoindent: Copy indentation when opening lines.
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- Search
--
-- ignorecase: Case-insensitive searching.
-- smartcase: Case-sensitive searching when an uppercase character exists.
opt.ignorecase = true
opt.smartcase = true

-- Visual
--
-- termguicolors: Enable truecolors.
-- background: Set background to dark.
-- signcolumn: Enable gutter.
-- showmode: Disable the default current mode label.
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
opt.showmode = false

-- Splitting
--
-- splitright: Split vertical window to the right.
-- splitbelow: Split horizontal window to the bottom.
opt.splitright = true
opt.splitbelow = true
