return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    vim.opt.termguicolors = true
    require('bufferline').setup {
      options = {
        themable = true,
        mode = 'tabs',
        diagnostics = 'nvim_lsp',
        diagnostics_update_in_insert = false,
        diagnostics_indicator = function(count, level)
          local icon = level:match 'error' and ' ' or ' '
          return ' ' .. icon .. count
        end,
        show_close_icon = false,
        show_buffer_close_icons = false,
      },
      highlights = {
        indicator_selected = {
          fg = '#f6c177',
        },
      },
    }
  end,
}
