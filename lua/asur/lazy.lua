local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim" -- lazy path
if not vim.loop.fs_stat(lazypath) then -- check if the lazy avilable or not
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({ { import = "asur.plugins" }, { import = "asur.plugins.lsp" } }, {
	--require("lazy").setup({ { import = "asur.plugins" } }, {

	checker = {
		enabled = true,
		notify = false,
	},
	change_detection = {
		notify = false,
	},
})
