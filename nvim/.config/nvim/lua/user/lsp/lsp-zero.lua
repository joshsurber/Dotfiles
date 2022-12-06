local ok, lsp = pcall(require, 'lsp-zero')
if not ok then return vim.notify('lspzero not loaded') end
local ok, cmp = pcall(require, 'cmp')
if not ok then return vim.notify('cmp not loaded') end
local cmp_select = { behavior = cmp.SelectBehavior.Select }

lsp.preset('recommended')
lsp.set_preferences({
	suggest_lsp_servers = true,
	setup_servers_on_start = true,
	set_lsp_keymaps = false,
	configure_diagnostics = true,
	cmp_capabilities = true,
	manage_nvim_cmp = true,
	call_servers = 'local',
	sign_icons = {
		error = '✘',
		warn = '▲',
		hint = '⚑',
		info = ''
	}
})
lsp.setup_nvim_cmp({
	mapping = lsp.defaults.cmp_mappings({
		['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
		['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
	})
})
lsp.nvim_workspace()
lsp.setup()

require("luasnip.loaders.from_snipmate").lazy_load()
vim.cmd [[ command! LuaSnipEdit :lua require("luasnip.loaders").edit_snippet_files() ]]