return {
  'luukvbaal/statuscol.nvim',
  event = { 'BufNewFile', 'BufReadPre' },
  opts = function()
    local builtin = require 'statuscol.builtin'
    return {
      relculright = true,
      segments = {
        {
          sign = {
            namespace = { 'gitsign' },
            maxwidth = 1,
            colwidth = 1,
            auto = true,
            fillchar = ' ',
            fillcharhl = 'StatusColumnSeparator',
          },
          click = 'v:lua.ScSa',
        },
        { text = { ' ' } },
        {
          sign = {
            name = {
              'Dap',
            },
            maxwidth = 1,
            colwidth = 1,
            auto = true,
          },
          click = 'v:lua.ScSa',
        },
        { text = { ' ' } },
        { text = { builtin.lnumfunc }, click = 'v:lua.ScLa' },
        { text = { ' ' } },
        { text = { builtin.foldfunc }, click = 'v:lua.ScFa' },
        { text = { ' ' } },
        {
          sign = { namespace = { 'diagnostic/signs' }, maxwidth = 1, auto = true },
          click = 'v:lua.ScSa',
        },
      },
      ft_ignore = {
        'help',
        'vim',
        'dashboard',
        'neo-tree',
        'Trouble',
        'lazy',
        'toggleterm',
      },
    }
  end,
}
