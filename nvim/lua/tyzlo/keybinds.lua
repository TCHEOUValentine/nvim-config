local function map(mode, key, value)
    vim.keymap.set(mode, key, value, {silent = true })
end

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
map('x', '<C-j>', ":move '>+1<CR>gv=gv")
map('x', '<C-k>', ":move '<-2<CR>gv=gv")

map('n', '<', '<<Space>')
map('n', '>', '><Space>')
map('v', '<', "<gv")
map('v', '>', ">gv")

map('n', '<C-S>', ":w<CR>")
map('i', '<C-S>', "<Esc>:w<CR>")

map('n', '<C-X>', ":q<CR>")
map('i', '<C-X>', "<Esc>:q<CR>")
