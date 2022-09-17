require 'plugins.packer'

-- include plugin configurations only if plugin is installed

local plugins = {
  'nvim-tree',
  'cmp',
  'treesitter',
  'autopairs',
  'bufferline',
  'impatient',
  'indentline',
  'alpha',
  'whichkey',
  'lualine',
  'vimlatex',
}

for plugs = 1, #plugins do
    local status_ok, _ = pcall(require, "plugins.configs." .. plugins[plugs])
    if not status_ok then
      return
    end
end


