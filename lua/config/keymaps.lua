-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Define a function to open terminal
function Start_console()
  vim.cmd("term")
  vim.cmd("startinsert")
  vim.cmd(":setlocal nonumber norelativenumber")
end

-- Define a function to open terminal and run `rails c`
function Start_rails_console()
  vim.cmd("term rails c")
  vim.cmd("startinsert")
  vim.cmd(":setlocal nonumber norelativenumber")
end

-- Create a key mapping to call the above functions
vim.api.nvim_set_keymap(
  "n",
  "<Leader>ft",
  ":lua Start_console()<CR>",
  { desc = "Terminal", noremap = true, silent = true }
)

vim.api.nvim_set_keymap(
  "n",
  "<Leader>rc",
  ":lua Start_rails_console()<CR>",
  { desc = "Rails Console", noremap = true, silent = true }
)
