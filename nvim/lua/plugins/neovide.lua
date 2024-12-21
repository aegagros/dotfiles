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
        -- guifont = "Source Code Pro:h11.5",
        guifont = "JetBrainsMono Nerd Font:h11"
        -- line spacing
        -- linespace = 0,
      },
      g = { -- configure vim.g variables
        neovide_cursor_trail_size = 0.2,
        neovide_transparency = 1,
        neovide_scale_factor = 1.0,
        neovide_padding_top = 16,
        neovide_padding_bottom = 16,
        neovide_padding_right = 16,
        neovide_padding_left = 16,
        neovide_remember_window_size = true,
      },
    },
  },
}
