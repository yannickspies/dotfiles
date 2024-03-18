-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Harpoon
keymap.set("n", "<leader>a", mark.add_file)
keymap.set("n", "<C-e>", ui.toggle_quick_menu)

keymap.set("n", "<C-h>", function()
  ui.nav_file(1)
end)
keymap.set("n", "<C-j>", function()
  ui.nav_file(2)
end)
keymap.set("n", "<C-k>", function()
  ui.nav_file(3)
end)
keymap.set("n", "<C-l>", function()
  ui.nav_file(4)
end)

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Increment/decrement
-- keymap.set("n", "+", "<C-a>")
-- keymap.set("n", "-", "<C-x>")

-- Disable continuations
keymap.set("n", "<Leader>o", "o<Esc>^Da", opts)
keymap.set("n", "<Leader>O", "O<Esc>^Da", opts)

-- New tab
keymap.set("n", "te", ":tabedit")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
