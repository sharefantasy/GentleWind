(module gentlewind.plugin.lspconfig
        {autoload {nvim aniseed.nvim}})

(macro set-server [server]
       `((. (. (require :lspconfig) ,server) :setup) {}))

{
 :config (fn []
             (set-server :gopls)
             (set-server :pyright))
 }
