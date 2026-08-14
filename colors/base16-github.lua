local palette = {
  base00 = "#0d1117",
  base01 = "#151b23",
  base02 = "#212830",
  base03 = "#656c76",
  base04 = "#9198a1",
  base05 = "#f0f6fc",
  base06 = "#ffffff",
  base07 = "#ffffff",
  base08 = "#ff7b72",
  base09 = "#f0883e",
  base0A = "#d29922",
  base0B = "#3fb950",
  base0C = "#79c0ff",
  base0D = "#58a6ff",
  base0E = "#be8fff",
  base0F = "#e16f24",
}

require('utils/base16').setup(palette)

vim.g.colors_name = 'base16-github'
