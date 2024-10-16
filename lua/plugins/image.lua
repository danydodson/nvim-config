-- lua/plugins/image.lua

return {
  "3rd/image.nvim",
  config = function()
    require("image").setup({
      backend = "kitty",
      integrations = {
        markdown = {
          enabled = true,
        },
        neorg = {
          enabled = true,
        },
        html = {
          enabled = false,
        },
        css = {
          enabled = false,
        },
      },
      hijack_file_patterns = {
        "*.png",
        "*.jpg",
        "*.jpeg",
        "*.gif",
        "*.webp",
        "*.avif",
      },
    })
  end,
}
