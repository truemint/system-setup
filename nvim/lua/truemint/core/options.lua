-- Makes the file explorer in Vim/NVim show entries in a tree-like structure
vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

-- Enable 24-bit terminal colors in nvim
opt.termguicolors = true

-- Show relative line numbers
opt.relativenumber = true

-- Show current line number
opt.number = true

-- When scrolling, keep cursor vertically centered
opt.scrolloff = 999

-- Tabs and Indentation settings
opt.tabstop = 2		    -- 2 spaces for tabs
opt.shiftwidth = 2	  -- 2 spaces for auto-indent width
opt.expandtab = true	-- Expand tabs to spaces
opt.autoindent = true	-- Copy indent from current line when starting a new one

-- Disable line-wrapping
opt.wrap = false

-- Search settings
opt.ignorecase = true -- Search is case-insensitive
opt.smartcase = true  -- Search is automatically case-sensitive if the search query is in mixed-case

-- Show a horizontal line where the cursor is
opt.cursorline = true

-- Inherit GUI colors from the terminal
opt.termguicolors = true

-- Configure backspace to work as expected
-- opt.backspace = "indent,eol,start"

-- Configure clipboard to use the system default clipboard
opt.clipboard:append("unnamedplus")

-- Options for default window splitting
opt.splitright = true
opt.splitbelow = true

-- Enable preview in a separate pane when using substitute (replace) and a few other commands
opt.inccommand = "split"
     
