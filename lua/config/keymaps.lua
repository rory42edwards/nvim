-- file to contain keymaps. required by general.lua
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.api.nvim_set_keymap('n', '<leader>nto', ':NvimTreeOpen<CR>', { noremap = true, silent = true })

local function setup_tex_mappings()
    vim.api.nvim_set_keymap('n', '<localleader>vc', ':VimtexCompileSS<CR>', { noremap = true, silent = true })
end
return {
    setup_tex_mappings = setup_tex_mappings,
}
