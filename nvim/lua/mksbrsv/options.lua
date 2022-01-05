-- aliases
local cmd = vim.cmd  -- execute vim commands
local exec = vim.api.nvim_exec  -- execute vim scripts
local fn = vim.fn  -- call vim functions
local g = vim.g  -- global variables
local opt = vim.opt  -- global/buffer/windows-scoped options

g.background = 'dark'

opt.number = true
opt.termguicolors = true
opt.relativenumber = true
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.smartindent = true
opt.ruler = true
opt.startofline = false
opt.incsearch = true
opt.hlsearch = true
opt.smartcase = true
opt.showmatch = true
opt.swapfile = false
opt.splitbelow = true
opt.splitright = true
opt.backup = false
opt.clipboard = 'unnamedplus'
opt.completeopt = {'menuone', 'noselect'}
opt.conceallevel = 0
opt.mouse = 'a'
opt.pumheight = 10
opt.timeoutlen = 500
opt.undofile = true
opt.updatetime = 300
opt.writebackup = false
opt.cursorline = true
opt.numberwidth = 2
opt.signcolumn = 'yes'
opt.wrap = false


cmd[[set noshowmode]]

cmd [[
au BufEnter *et fo-=c fo-=r fo-=o
]]

cmd [[
autocmd BufNewFile,BufRead *.ejs :set filetype=html
]]

cmd [[
autocmd FileType xml,html,xhtml,css,scss,javascript,lua,yaml setlocal shiftwidth=2 tabstop=2
]]

cmd [[
autocmd FileType py setlocal shiftwidth=4 tabstop=4
]]

cmd [[
au BufWritePre * :%s/\s\+$//e
]]
