return {
  -- start screen
  "mhinz/vim-startify",
  lazy = false,
  init = function()
    vim.g.startify_custom_header = { "   Welcome back, Vanya" }
    vim.g.startify_lists = {
      { type = "files", header = { "   Recent Files" } },
      { type = "sessions", header = { "   Sessions" } },
    }
  end,
}
