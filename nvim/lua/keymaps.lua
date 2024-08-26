-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Other keymaps
local function map(mode, key, value)
  vim.keymap.set(mode, key, value, { silent = true })
end

-- Center the cursor line after certain moves
map('n', 'n', 'nzz')
map('n', 'N', 'Nzz')
map('n', '<C-d>', '<C-d>zz')
map('n', '<C-u>', '<C-u>zz')

-- Easily create a new tab
map('n', '<C-T>', ':tabnew<CR>')

-- Add lines without entering edit mode
map('n', '<leader>o', 'o<ESC>')
map('n', '<leader>O', 'O<ESC>')

-- Easily move text
map('n', '<', '<<Space>')
map('n', '>', '><Space>')
map('v', '<', '<gv')
map('v', '>', '>gv')

-- Easily save
map('n', '<C-S>', ':w<CR>')
map('i', '<C-S>', '<Esc>:w<CR>')

-- Easily exit
map('n', '<C-x>', ':q<CR>')
map('i', '<C-x>', '<Esc>:q<CR>')

-- Markdown Preview Keymap
vim.keymap.set('n', '<C-p>', ':MarkdownPreviewToggle<CR>')

-- Maximizer Toggle Keymap
vim.keymap.set('n', '<leader>m', ':MaximizerToggle<CR>')
