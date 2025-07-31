require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<C-r>", "<cmd>Telescope projects<CR>", { noremap = true, silent = true })
map("t", "<Esc>", [[<C-\><C-n>]], { noremap = true, silent = true })
map("n", "<F12>", "gd", { desc = "Go to definition" })
map("n", "<S-F12>", "gr", { desc = "Find references" })

-- Jump list navigation
map("n", "<A-Left>", "<C-o>", { desc = "Jump back" })
map("n", "<A-Right>", "<C-i>", { desc = "Jump forward" })

-- LSP navigation
map("n", "<F12>", "gd", { desc = "Go to definition" })
map("n", "<S-F12>", "gr", { desc = "Find references" })
map("n", "K", vim.lsp.buf.hover, { desc = "Hover documentation" })
map("n", "<C-.>", vim.lsp.buf.code_action, { desc = "Code actions" })
map("v", "<C-.>", vim.lsp.buf.code_action, { desc = "Code actions (visual)" })
map("n", "<F2>", vim.lsp.buf.rename, { desc = "Rename symbol" })

-- VS Code–style keybindings
map("n", "<C-p>", "<cmd>Telescope find_files<CR>", { desc = "Find files" })
map("n", "<C-S-F>", "<cmd>Telescope live_grep<CR>", { desc = "Global search (live grep)" })
map("n", "<C-S-o>", "<cmd>Telescope lsp_document_symbols<CR>", { desc = "Document symbols" })

-- Comments (requires Comment.nvim)
map("n", "<C-/>", "gcc", { desc = "Toggle comment" })
map("v", "<C-/>", "gc", { desc = "Toggle comment (visual)" })

-- Move lines
map("n", "<A-Up>", ":m .-2<CR>==", { desc = "Move line up" })
map("n", "<A-Down>", ":m .+1<CR>==", { desc = "Move line down" })
map("v", "<A-Up>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })
map("v", "<A-Down>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })

-- Duplicate lines
map("n", "<A-Shift-Down>", "yyp", { desc = "Duplicate line", noremap = true, silent = true })
map("v", "<A-Shift-Down>", "yyp", { desc = "Duplicate selection", noremap = true, silent = true })
-- Window management
map("n", "<leader>v", function()
  require("nvchad.term").new { pos = "vsp" }
  vim.cmd "vertical resize 100"
  vim.cmd "startinsert"
end, { noremap = false, silent = true, desc = "Vertical split with terminal" })

-- Copilot
map("i", "<C-y>", "<Plug>(copilot-accept-word)", { desc = "Accept Copilot suggestion", noremap = true, silent = true })
