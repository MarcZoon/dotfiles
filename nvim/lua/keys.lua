--[[ keys.lua ]]
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
-- leave insert mode
map("i", "<Leader>n", "<Esc>", opts)

-- nvim-tree
map("n", "<Leader>x", [[:NvimTreeFocus]] .. "<Enter>", opts)
map("n", "<Leader>X", [[:NvimTreeToggle]] .. "<Enter>", opts)

-- Tab navigation
map("n", "<Leader>1", "1gt", opts)
map("n", "<Leader>2", "2gt", opts)
map("n", "<Leader>3", "3gt", opts)
map("n", "<Leader>4", "4gt", opts)
map("n", "<Leader>5", "5gt", opts)
map("n", "<Leader>6", "6gt", opts)
map("n", "<Leader>7", "7gt", opts)
map("n", "<Leader>8", "8gt", opts)
map("n", "<Leader>9", "9gt", opts)
map("n", "<Leader>-", [[:tabprevious]] .. "<CR>", opts)
map("n", "<Leader>=", [[:tabnext]] .. "<CR>", opts)

-- Pane navigation
map("n", "<C-h>", [[:wincmd h]] .. "<CR>", opts)
map("n", "<C-j>", [[:wincmd j]] .. "<CR>", opts)
map("n", "<C-k>", [[:wincmd k]] .. "<CR>", opts)
map("n", "<C-l>", [[:wincmd l]] .. "<CR>", opts)

-- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<Leader>tf", builtin.find_files, opts)
vim.keymap.set("n", "<Leader>fg", builtin.live_grep, opts)
vim.keymap.set("n", "<Leader>fb", builtin.buffers, opts)
vim.keymap.set("n", "<Leader>fh", builtin.help_tags, opts)

-- Tagbar
map("n", "<F8>", [[:TagbarToggle]] .. "<CR>", opts)

-- barbar.nvim (https://github.com/romgrk/barbar.nvim)
-- Move to previous/next
map("n", "<A-,>", "<Cmd>BufferPrevious<CR>", opts)
map("n", "<A-.>", "<Cmd>BufferNext<CR>", opts)
-- Re-order to previous/next
map("n", "<A-<>", "<Cmd>BufferMovePrevious<CR>", opts)
map("n", "<A->>", "<Cmd>BufferMoveNext<CR>", opts)
-- Goto buffer in position...
map("n", "<A-1>", "<Cmd>BufferGoto 1<CR>", opts)
map("n", "<A-2>", "<Cmd>BufferGoto 2<CR>", opts)
map("n", "<A-3>", "<Cmd>BufferGoto 3<CR>", opts)
map("n", "<A-4>", "<Cmd>BufferGoto 4<CR>", opts)
map("n", "<A-5>", "<Cmd>BufferGoto 5<CR>", opts)
map("n", "<A-6>", "<Cmd>BufferGoto 6<CR>", opts)
map("n", "<A-7>", "<Cmd>BufferGoto 7<CR>", opts)
map("n", "<A-8>", "<Cmd>BufferGoto 8<CR>", opts)
map("n", "<A-9>", "<Cmd>BufferGoto 9<CR>", opts)
map("n", "<A-0>", "<Cmd>BufferLast<CR>", opts)
-- Pin/unpin buffer
map("n", "<A-p>", "<Cmd>BufferPin<CR>", opts)
-- Close buffer
map("n", "<A-c>", "<Cmd>BufferClose<CR>", opts)
-- Magic buffer-picking mode
map("n", "<C-p>", "<Cmd>BufferPick<CR>", opts)
-- Sort automatically by...
map("n", "<Space>bb", "<Cmd>BufferOrderByBufferNumber<CR>", opts)
map("n", "<Space>bd", "<Cmd>BufferOrderByDirectory<CR>", opts)
map("n", "<Space>bl", "<Cmd>BufferOrderByLanguage<CR>", opts)
map("n", "<Space>bw", "<Cmd>BufferOrderByWindowNumber<CR>", opts)

-- DiffView
map("n", "<Leader>dvo", [[:DiffviewOpen]] .. "<CR>", opts)
map("n", "<Leader>dvc", [[:DiffviewClose]] .. "<CR>", opts)
