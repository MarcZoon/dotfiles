vim.lsp.config('pylsp', {
  settings = {
    pylsp = {
      plugins = {
        pyflakes = { enabled = false },
        pycodestyle = { enabled = false },
        autopep8 = { enabled = false },
        yapf = { enabled = false },
        mccabe = { enabled = false },
        pylint = { enabled = false },
        flake8 = { enabled = false },
        pydocstyle = { enabled = false },
        ruff = { enabled = false },
        mypy = { enabled = false },
        rope = { enabled = false },
        jedi_completion = { enabled = true },
        jedi_definition = { enabled = true },
        jedi_hover = { enabled = true },
        jedi_references = { enabled = true },
        jedi_signature_help = { enabled = true },
        jedi_symbols = { enabled = true },
      },
    },
  },
})
