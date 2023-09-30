local telescope = require("telescope")
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<C-f>', builtin.git_files, {})
vim.keymap.set('n', '<leader>fs', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

telescope.setup({
    extensions = {
        emoji = {
            action = function(emoji)
                vim.api.nvim_put({ emoji.value }, 'c', false, true)
            end,
        }
    },
})
telescope.load_extension("emoji")
vim.keymap.set('n', '<C-i>', '<cmd>Telescope emoji<cr>')
vim.keymap.set('i', '<C-i>', '<cmd>Telescope emoji<cr>')
