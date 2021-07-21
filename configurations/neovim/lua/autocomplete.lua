-- Module for configuring the "hrsh7th/nvim-compe" plugin

local compe = require('compe')


compe.setup{
	source = {
		vsnip = true;
		ultisnip = true;
		luasnip = true;
	};
}
