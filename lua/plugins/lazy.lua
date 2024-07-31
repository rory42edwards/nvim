-- lazy plugin manager setup
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
local uv = vim.uv or vim.loop

-- Auto-install lazy.nvim if not present
if not uv.fs_stat(lazypath) then
    print('Installing lazy.nvim....')
    vim.fn.system({
        'git',
        'clone',
        '--filter=blob:none',
        'https://github.com/folke/lazy.nvim.git',
        '--branch=stable', -- latest stable release
        lazypath,
    })
    print('Done.')
end

vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
    {'L3MON4D3/LuaSnip'},
    {'nvim-tree/nvim-tree.lua'},
    -- to do: move this vimtex setup to its own file
    {'lervag/vimtex',
	lazy = false,
	init = function()
      vim.g.vimtex_view_general_viewer = 'okular'
      vim.g.vimtex_compiler_method = "latexmk"
      vim.g.vimtex_compiler_latexmk = {
        build_dir = '',
        callback = 1,
        continuous = 1,
        executable = 'latexmk',
        options = {
          '-pdf',
          '-pdflatex=pdftex -interaction=nonstopmode -synctex=1',
          '-bibtex'
        },
      }
	  end
    },
})
