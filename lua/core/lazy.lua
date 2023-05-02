local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.api.nvim_echo({ { 'Installing lazy.nvim...', 'Type' } }, true, {})
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local opts = {
  git = {
    url_format = "https://github.com/%s.git"
  },
  dev = {
    path = ""
  },
  install = {
    missing = true,
    colorscheme = { "catppuccin" },
  }
}

require("lazy").setup("plugins", opts)
