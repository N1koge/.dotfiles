local palette = require("nightfox.palette").load("nightfox");

local cfg = {
  handle = {
   color = palette.bg3
  },
}

require("scrollbar").setup(cfg)
