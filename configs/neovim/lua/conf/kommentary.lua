-- NOTE: Kommentary works perfect right out-of-the-box without
-- requiring much configurations. Although, there's some scope
-- to customize person keybindings other than that everything works
-- fine. For more configuration requirements refer to:
-- https://github.com/b3nj5m1n/kommentary#configuration

local M = {}

local kommentary = require('kommentary.config')

function M.config()
    kommentary.configure_language('default', {
        prefer_single_line_comments = true,
    })
end

return M
