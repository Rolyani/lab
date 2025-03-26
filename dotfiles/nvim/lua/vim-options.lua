vim.cmd('filetype indent on')
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.g.mapleader = " "

vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
  pattern = "*",
  callback = function()
    vim.cmd([[match Error /\s\+$/]])
  end
})

vim.cmd('syntax on')
vim.opt.backspace = 'indent,eol,start'


