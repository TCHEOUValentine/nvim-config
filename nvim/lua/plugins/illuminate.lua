return {
  'RRethy/vim-illuminate',
  event = 'User AstroFile',
  opts = function()
    return {
      min_count_to_highlight = 2,
      large_file_cutoff = 1000,
      large_file_overrides = { providers = { 'lsp' } },
      should_enable = function()
        return true
      end,
      filetypes_denylist = {
        'dirbuf',
        'dirvish',
        'TelescopePrompt',
        'togglerterm',
      },
    }
  end,
}
