return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  dependencies = { { 'nvim-tree/nvim-web-devicons' } },
  config = function()
    require('dashboard').setup {
      theme = 'hyper',
      config = {
        week_header = { enable = false },
        packages = { enable = false },
        project = { enable = false },
        mru = { limit = 8 },
        shortcut = {},
        header = {
          '',
          '███╗   ██╗ ██████╗  ██████╗ ████████╗  ███╗   ██╗ ██████╗  ██████╗ ████████╗',
          '████╗  ██║██╔═══██╗██╔═══██╗╚══██╔══╝  ████╗  ██║██╔═══██╗██╔═══██╗╚══██╔══╝',
          '██╔██╗ ██║██║   ██║██║   ██║   ██║     ██╔██╗ ██║██║   ██║██║   ██║   ██║   ',
          '██║╚██╗██║██║   ██║██║   ██║   ██║     ██║╚██╗██║██║   ██║██║   ██║   ██║   ',
          '██║ ╚████║╚██████╔╝╚██████╔╝   ██║     ██║ ╚████║╚██████╔╝╚██████╔╝   ██║   ',
          '╚═╝  ╚═══╝ ╚═════╝  ╚═════╝    ╚═╝     ╚═╝  ╚═══╝ ╚═════╝  ╚═════╝    ╚═╝   ',
          '',
          '',
        },
        center = {},
        footer = {
          '',
          '',
          'Even if you harbor doubts in your heart, there is no need to fret.',
          'You will have plenty of time to mull over it.',
          'The act of thinking itself is a meaningful process.',
        },
      },
    }
  end,
}
