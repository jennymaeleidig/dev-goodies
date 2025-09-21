local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('loctvl842/monokai-pro.nvim')

vim.call('plug#end')

require("monokai-pro").setup({})

-- Color schemes should be loaded after plug#end().
-- We prepend it with 'silent!' to ignore errors when it's not yet installed.
vim.cmd([[colorscheme monokai-pro]])
