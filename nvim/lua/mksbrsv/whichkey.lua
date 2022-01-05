local which_key = require("which-key")
tscp = require("mksbrsv.telescope")

local setup = {
	plugins = {
		marks = true,
		registers = true,
		spelling = {
			enabled = true,
			suggestions = 20,
		},
		presets = {
			operators = false,
			motions = false,
			text_objects = false,
			windows = true,
			nav = true,
			z = true,
			g = true,
		},
	},
	key_labels = {
		-- ['<space'] ='SPC',
		-- ['<CR>'] = 'RET',
		-- ['<tab>'] = 'TAB',
	},
	window = {
		border = "rounded",
		postions = "bottom",
		margin = { 1, 0, 1, 0 }, -- [top, right, bottom, left]
		padding = { 2, 2, 2, 2 },
		winblend = 0,
	},
	layout = {
		height = { min = 4, max = 25 },
		width = { min = 20, max = 50 },
		spacing = 3,
		align = "left",
	},
	ignore_missing = true,
	hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ " },
	show_help = true,
	triggers = "auto",
}

local opts = {
	mode = "n",
	prefix = "<leader>",
	buffer = nil,
	silent = true,
	noremap = true,
	nowait = true,
}

local mappings = {
	["a"] = { "<cmd>Alpha<CR>", "Alpha" },
	["e"] = { "<cmd>NvimTreeToggle<CR>", "Explorer" },
	["w"] = { "<cmd>w!<CR>", "Save" },
	["q"] = { "<cmd>q!<CR>", "Quit" },
	["c"] = { "<cmd>bdelete!<CR>", "Close Buffer" },
	["h"] = { "<cmd>nohlsearch<CR>", "No Highlight" },
	["f"] = { "<cmd>Telescope find_files<CR>", "Find files" },
	p = {
		name = "Packer",
		c = { "<cmd>PackerCompile<CR>", "Compile" },
		i = { "<cmd>PackerInstall<CR>", "Install" },
		s = { "<cmd>PackerSync<CR>", "Sync" },
		S = { "<cmd>PackerStatus<CR>", "Status" },
		u = { "<cmd>PackerUpdate<CR>", "Update" },
	},
	l = {
		name = "LSP",
		a = { "<cmd>Lspsaga code_action<CR>", "Code Action" },
		d = {
			"<cmd>Telescope diagnostics bufnr=0<CR>",
			"Document Diagnostics",
		},
		f = { "<cmd>lua vim.lsp.buf.formatting()<CR>", "Format" },
		i = { "<cmd>LspInfo<CR>", "Info" },
		h = { "<cmd>Lspsaga hover_doc<CR>", "Hover Doc" },
		r = { "<cmd>Lspsaga rename<CR>", "Rename" },
		j = { "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", "Next diagnostic" },
		k = { "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>", "Prev Diagnostic" },
	},
	s = {
		name = "Search",
		b = { "<cmd>Telescope git_branches<CR>", "Checkout branch" },
		c = { "<cmd>Telescope colorscheme<CR>", "Colorscheme" },
		M = { "<cmd>Telescope man_pages<CR>", "Man Pages" },
		h = { "<cmd>Telescope help_tags<CR>", "Find Help" },
		r = { "<cmd>Telescope oldfiles<CR>", "Open Recent File" },
		R = { "<cmd>Telescope registers<CR>", "Registers" },
		k = { "<cmd>Telescope keymaps<CR>", "Keymaps" },
		C = { "<cmd>Telescope commands<CR>", "Commands" },
		n = { "<cmd>lua tscp.search_dotfiles()<CR>", "Neovim Configuration" },
	},
  t = {
    name = "Terminal",
    n = { "<cmd>lua _NODE_TOGGLE()<cr>", "Node" },
    u = { "<cmd>lua _NCDU_TOGGLE()<cr>", "NCDU" },
    t = { "<cmd>lua _HTOP_TOGGLE()<cr>", "Vtop" },
    p = { "<cmd>lua _PYTHON_TOGGLE()<cr>", "Python" },
    f = { "<cmd>ToggleTerm direction=float<cr>", "Float" },
    h = { "<cmd>ToggleTerm size=10 direction=horizontal<cr>", "Horizontal" },
    v = { "<cmd>ToggleTerm size=80 direction=vertical<cr>", "Vertical" },
  },
}

which_key.setup(setup)
which_key.register(mappings, opts)
