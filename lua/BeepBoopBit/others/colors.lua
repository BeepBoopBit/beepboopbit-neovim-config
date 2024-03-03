function ColorNVIM(color)
	-- Theme
	color = color or "kanagawa"
	vim.cmd.colorscheme(color)
	
	-- Transparency
	vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
	vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})

	-- Color Highlighter
	require("colorizer").attach_to_buffer(0, { mode = "background", css = true})
	--require("colorizer").detach_from_buffer(0, { mode = "virtualtext", css = true})
	require('colorizer').setup()
end

ColorNVIM()
--ColorNVIM('oxocarbon')
