local function map(mode, key, value)
    vim.keymap.set(mode, key, value, {silent = true })
end

vim.g.mapleader = " "

map('n', 'W', 'w')
map('n', 'Q', 'q')
map('n', 'WQ', 'wq')

map('n', 'n', 'nzz')
map('n', 'N', 'Nzz')

map('i', 'ii', '<Esc>')

map('n', '<C-d>', '<C-d>zz')
map('n', '<C-u>', '<C-u>zz')

map('n', '<C-h>', '<C-w>h')
map('n', '<C-l>', '<C-w>l')

map('n', '<leader>o', 'o<ESC>')
map('n', '<leader>O', 'O<ESC>')

map('n', '<C-T>', ':tabnew<CR>')

map('n', '<C-j>', '<CMD>move .+1<CR>')
map('n', '<C-k>', '<CMD>move .-2<CR>')
map('v', '<C-j>', ":move '>+1<CR>gv=gv")
map('v', '<C-k>', ":move '<-2<CR>gv=gv")

map('n', '<C-Up>', ":resize -2<CR>")
map('n', '<C-Down>', ":resize +2<CR>")
map('n', '<C-Left>', ":vertical resize -2<CR>")
map('n', '<C-Right>', ":vertical resize +2<CR>")

map('n', '<', '<<Space>')
map('n', '>', '><Space>')
map('v', '<', "<gv")
map('v', '>', ">gv")

map('n', '<C-S>', ":w<CR>")
map('i', '<C-S>', "<Esc>:w<CR>")

map('n', '<C-X>', ":q<CR>")
map('i', '<C-X>', "<Esc>:q<CR>")
