(module gentlewind.plugin.gruvbox
        {autoload {nvim aniseed.nvim}})

{
 :setup (fn []
          (set nvim.o.background :dark)
          (nvim.command "colorscheme gruvbox"))
}
