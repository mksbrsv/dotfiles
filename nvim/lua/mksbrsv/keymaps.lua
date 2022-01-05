local keymap = vim.api.nvim_set_keymap
tscp = require('mksbrsv.telescope')
local noremap_opt = { noremap = true }
local silent_opt = { silent = true }
local sil_nor_opt = { noremap = true, silent = true }

-- keymap('mode', 'bind', 'command', options)

-- mapping leader key to space
keymap('n', '<Space>', '<NOP>', sil_nor_opt)
vim.g.mapleader = ' '
-- better movement
keymap('n', '<c-j>', '<c-w>j', noremap_opt)
keymap('n', '<c-k>', '<c-w>k', noremap_opt)
keymap('n', '<c-h>', '<c-w>h', noremap_opt)
keymap('n', '<c-l>', '<c-w>l', noremap_opt)
-- move lines in visual mode
keymap('v', 'J', ':m \'>+1<CR>gv=gv', noremap_opt)
keymap('v', 'K', ':m \'<-2<CR>gv=gv', noremap_opt)
-- totally delete line
keymap('v', 'X', '"_d', noremap_opt)
keymap('n', '<c-m>', ':nohl<CR>', silent_opt)
-- buffer movement
keymap('n', '<Leader>]', ':BufferLineCycleNext<CR>', sil_nor_opt)
keymap('n', '<Leader>[', ':BufferLineCyclePrev<CR>', sil_nor_opt)
-- open file tree
keymap('n', '<Leader>n', ':NvimTreeToggle<CR>', sil_nor_opt)
keymap('n', '<Leader>f', ':Telescope find_files<CR>', sil_nor_opt)
keymap('n', '<Leader>b', ':Telescope buffers<CR>', sil_nor_opt)
-- copy to + buffer
keymap('v', '<c-y>', '"+y', sil_nor_opt)
keymap('n', 'bd', ':bdelete<CR>', sil_nor_opt)
keymap('n', '<Leader>rc', '<cmd>lua tscp.search_dotfiles()<CR>', sil_nor_opt)
-- get out of () brackets
--keymap('n', '\\', 'f)a', silent_opt)
-- gui command line
-- keymap('n', ':', '<cmd>FineCmdline<CR>', sil_nor_opt);


