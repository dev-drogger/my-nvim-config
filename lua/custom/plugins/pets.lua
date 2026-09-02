local image = require 'image'

local width = 20
local height = 1

local buf = vim.api.nvim_create_buf(false, true)
local win = vim.api.nvim_open_win(buf, false, {
  relative = 'editor',
  width = width,
  height = height,
  row = vim.o.lines - height,
  col = vim.o.columns - width,
  style = 'minimal',
  focusable = false,
  zindex = 200,
})

-- vim.wo[win].winblend = 100
-- vim.api.nvim_set_hl(0, 'ImageFloatNormal', { bg = 'none' })
-- vim.wo[win].winhighlight = 'Normal:ImageFloatNormal,NormalNC:ImageFloatNormal'

local img = image.from_file('~/Pictures/cat.png', {
  buffer = buf,
  window = win,
  with_virtual_padding = true, -- reserves space in buffer for the image
  x = 0.1,
  y = 0,
  width = 2,
  height = 1,
})

img:render()

vim.defer_fn(function()
  Snacks.animate(0, 15, function(value) img:move(math.floor(value), img.geometry.y) end, {
    easing = 'linear',
    duration = { total = 15000 },
    int = true,
  })
end, 4000)
