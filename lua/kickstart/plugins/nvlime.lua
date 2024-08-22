-- common lisp nvlime dev enviroment for neo vim
-- https://github.com/monkoose/nvlime

return {
  'monkoose/nvlime',
  version = '*',
  dependencies = {
    'monkoose/parsley',
    'kovisoft/paredit',
  },
  config = function()
    --vim.g.nvlime_config.cmp.enabled = true
    require('cmp').setup.filetype({ 'lisp' }, {
      sources = {
        { name = 'nvlime' },
      },
    })
  end,
}
