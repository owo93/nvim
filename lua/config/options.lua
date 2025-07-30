-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.mapleader = " "

vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 3
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.clipboard = "unnamedplus"

-- Colorscheme
vim.g.nightflyTransparent = true

if vim.fn.has("nvim-0.8") == 1 then
	vim.opt.shell = "pwsh.exe"
end

if vim.g.neovide then
	vim.g.nightflyTransparent = false
	-- vim.g.neovide_title_background_color = "011627" -- nightfly bg https://github.com/bluz71/vim-nightfly-colors/blob/674f38e12ffc251bee6c572cfffbf814c1f116e4/autoload/nightfly.vim#L2
	vim.api.nvim_set_keymap("n", "<F11>", ":let g:neovide_fullscreen = !g:neovide_fullscreen<CR>", {})
end
