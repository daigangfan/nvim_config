local cmd = vim.cmd
vim.o.showtabline = 2
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1
vim.bo.expandtab=true
vim.bo.tabstop=4
vim.g['deoplete#enable_at_startup'] = 1
vim.g["jedi#completions_enabled"] = 0 
vim.g["jedi#use_splits_not_buffers"] = "right"
vim.g.mapleader=" "
vim.cmd([["call neomake#configure#automake('nrwi',500)"]])
require("packer_run")
require("nvim-tree").setup()
require("lualine").setup()
require("tabline").setup()
require("nvim-treesitter.configs").setup(
{
        ensure_installed={"c","cpp","python","bash"},
        disable = {"vim"},
        sync_install = false,
        auto_install=true,
        highlight={
                enable=true,
        },
        additional_vim_regex_highlighting = false

}
)
require("aerial").setup({})
require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})
local builtin = require("telescope.builtin")
vim.keymap.set('n', 'ff', builtin.find_files, {})
vim.keymap.set('n', 'fg', builtin.live_grep, {})
vim.keymap.set('n', 'fb', builtin.buffers, {})
vim.keymap.set('n', 'fh', builtin.help_tags, {})
require("lspconfig").pyright.setup({})
require'FTerm'.setup({
    border = 'double',
    dimensions  = {
        height = 0.9,
        width = 0.9,
    },
})

-- Example keybindings
vim.keymap.set('n', '<A-i>', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<A-i>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
local dap = require('dap')
dap.adapters.python={
        type = 'executable';
        command = '/opt/anaconda3/bin/python';
        args={'-m','debugpy.adapter'};
}
require("dap-python").setup('/opt/anaconda3/bin/python')
require("dap-python").test_runner = 'pytest'
require("bufferline").setup{}
