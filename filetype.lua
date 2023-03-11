vim.filetype.add({
  extension = {
    ejs = 'html'
  },
  filename = {
    ["Brewfile"] = "ruby"
  },
  pattern = {
    [".prettierrc"] = "jsonc",
    [".eslintrc"] = "jsonc",
    ["tsconfig.json"] = "jsonc",
    ["jsconfig.json"] = "jsonc",
  }
})
