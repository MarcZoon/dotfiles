return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  lazy = false,
  config = function ()
    -- Disable netrw
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    
    -- Setup nvim-tree
    require("nvim-tree").setup {
      view = {
        width = 30,
        side = "left",
        preserve_window_proportions = true,
      },
      filters = {
        dotfiles = false,
        git_ignored = false,
      },
      renderer = {
        highlight_git = true,
      },
      git = {
        enable = true,
        ignore = false,
      },
      hijack_cursor = false,
      update_focused_file = {
        enable = true,
        update_cwd = false,
      },
      actions = {
        open_file = {
          quit_on_open = false
        }
      },
    }

    -- Keymaps
    vim.keymap.set("n", "<leader>tt", ":NvimTreeToggle<CR>", {
      silent = true,
      noremap = true,
      desc = "Nvim[T]ree [T]oggle"
    })
    vim.keymap.set("n", "<leader>tf", ":NvimTreeFocus<CR>", {
      silent = true,
      noremap = true,
      desc = "Nvim[T]ree [O]pen"
    })
    
    -- Auto-close if nvim-tree is the last window
    --vim.api.nvim_create_autocmd("BufEnter", {
    --  nested = true,
    --  callback = function()
    --    if #vim.api.nvim_list_wins() == 1 and vim.bo.filetype == "NvimTree" then
    --      vim.cmd("quit")
    --    end
    --  end,
    --})
    
    -- Auto-open nvim-tree
    --vim.api.nvim_create_autocmd("VimEnter", {
    --  callback = function()
    --    require("nvim-tree.api").tree.open()
    --  end,
    --})
  end,
}
