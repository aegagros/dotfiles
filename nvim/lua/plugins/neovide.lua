if not vim.g.neovide then
  return {} -- do nothing if not in a Neovide session
end

return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    options = {
      opt = { -- configure vim.opt options
        -- configure font
        guifont = "JetBrainsMono Nerd Font:h11"
        -- guifont = "Maple Mono Normal:h11.5",
        -- line spacing
        -- linespace = 0,
      },
      g = { -- configure vim.g variables
        neovide_cursor_trail_size = 0.2,
        neovide_padding_top = 8,
        neovide_padding_bottom = 8,
        neovide_padding_right = 8,
        neovide_padding_left = 8,
        neovide_remember_window_size = true,
      },
    },
  },
}
