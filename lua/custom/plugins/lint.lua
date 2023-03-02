return {
    'mfussenegger/nvim-lint',
    config = function ()
        local eslint = require('lint').linters.eslint_d

        eslint.name = 'eslint_d'
        eslint.stdin = true
        eslint.args = {
            '--stdin'
        }

        vim.diagnostic.config({
            update_in_insert = true
        })

        vim.api.nvim_create_autocmd({ "InsertLeave", "TextChangedI", "BufWritePre" }, {
            callback = function()
                require("lint").lint(eslint)
            end,
        })
    end
}
