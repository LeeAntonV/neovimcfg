vim.keymap.set("n", "T", "<cmd>:Telescope find_files<CR>")
vim.keymap.set("n", "du", "<cmd>:UndotreeToggle<CR>")
vim.keymap.set("n", "tt", "<cmd>:Trouble quickfix<CR>")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("i", "jk", "<ESC>")
vim.api.nvim_create_user_command("Gofunc", function()
  local row, col = unpack(vim.api.nvim_win_get_cursor(0))
  local buf = vim.api.nvim_get_current_buf()

  local line = vim.api.nvim_get_current_line()
  local before = line:sub(1, col)
  local after = line:sub(col + 1)

  local snippet_lines = {
    before .. "func () {",
    "\t",
    "}" .. after
  }

  vim.api.nvim_buf_set_lines(buf, row - 1, row, false, snippet_lines)

  vim.api.nvim_win_set_cursor(0, {row, 4})

  vim.cmd("write")
end, {})
