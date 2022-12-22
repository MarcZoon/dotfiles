require('nvim-treesitter.configs').setup({
    ensure_installed = {
        "bash",
        "bibtex",
        "dockerfile",
        -- "gitignore",
        "hcl",
        "javascript",
        "json",
        "latex",
        "lua",
        "markdown",
        "python",
        -- "sql",
        "toml",
        "vim",
        "yaml",
    },
    sync_install = true,
    auto_install = true,
    highlight = {
        enable = true,

    },
    refactor = {
        highlight_definitions = {
            enable = true,
            clear_on_cursor_move = true,
        }
    }
})
