local function autocmd(event, opts)
    vim.api.nvim_create_autocmd(event, opts)
end

-- Delete trailing spaces on save
autocmd(
    "BufWritePre",
    {
        pattern = { "*" },
        command = [[%s/\s\+$//e]]
    }
)

-- Resize split automatically
autocmd(
    "VimResized",
    {
        pattern = { "*" },
        command = [[wincmd =]]
    }
)
