vim.g.mapleader = " "

require 'user.plugins'
require 'user.settings'
require 'user.setup'
require 'user.colorscheme'
require 'user.which-key'
require 'user.bufferline'
require 'user.telescope'
require 'user.gitsigns'
require 'user.treesitter'
require 'user.lsp.lsp-zero'
require 'user.lsp.null-ls'
require 'user.toggleterm'
require 'user.lualine'
require 'user.auto-session'
require 'user.indent-blankline'
require 'user.mappings'
require 'user.autocmds'

-- Neovide config
vim.o.guifont = "CascadiaCode_Nerd_Font,Cascadia_Code_PL,Hack:h10"
vim.cmd [[
let g:neovide_floating_blur_amount_x = 50
let g:neovide_floating_blur_amount_y = 50
let g:neovide_cursor_vfx_mode = "railgun"
]]
