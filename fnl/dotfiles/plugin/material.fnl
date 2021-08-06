(module dotfiles.plugin.material
        {autoload {nvim aniseed.nvim}})

(set nvim.o.background :dark)
(nvim.command "colorscheme material")
(set nvim.g.material_style "deep ocean")
