-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Other auto commands
local function autocmd(event, opts)
  vim.api.nvim_create_autocmd(event, opts)
end

-- Delete trailing spaces on save
autocmd('BufWritePre', {
  pattern = { '*' },
  command = [[%s/\s\+$//e]],
})

-- Resize split automatically
autocmd('VimResized', {
  pattern = { '*' },
  command = [[wincmd =]],
})
