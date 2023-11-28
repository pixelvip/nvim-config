-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Define a function to open terminal with an optional command
function Start_console(command)
  local cmd = command and ("term " .. command) or "term"
  vim.cmd(cmd)
  vim.cmd("startinsert")
  vim.cmd(":setlocal nonumber norelativenumber")
end

-- Create a key mapping to call Start_console for a regular terminal
vim.api.nvim_set_keymap(
  "n",
  "<Leader>ft",
  ":lua Start_console()<CR>",
  { desc = "Terminal", noremap = true, silent = true }
)

-- Create a key mapping to call Start_console with "rails c"
vim.api.nvim_set_keymap(
  "n",
  "<Leader>rc",
  ":lua Start_console('rails c')<CR>",
  { desc = "Rails Console", noremap = true, silent = true }
)

-- Create a key mapping to call Start_console with "cargo run"
vim.api.nvim_set_keymap(
  "n",
  "<Leader>rr",
  ":lua Start_console('cargo run')<CR>",
  { desc = "Cargo run", noremap = true, silent = true }
)
