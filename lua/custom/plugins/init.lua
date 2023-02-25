-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
	{
		'folke/tokyonight.nvim',
    priority = 500,
    config = function()
      vim.cmd.colorscheme 'tokyonight-night'
			require('lualine').setup {
     options = {
        icons_enabled = false,
        theme = 'tokyonight',
        component_separators = '|',
        section_separators = '',
      },
}
       end,
	}
}
