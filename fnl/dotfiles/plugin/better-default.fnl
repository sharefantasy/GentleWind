(module dotfiles.plugin.better-default
        {autoload {nvim aniseed.nvim}})


(set nvim.g.vim_better_default_persistent_undo true)
(nvim.ex.runtime_ "plugin/default.vim")
(nvim.ex.set :wrap)
(nvim.ex.set "wildmode=full")
(nvim.ex.set "wildoptions=pum")
(nvim.ex.set "listchars-=eol:↵")
(nvim.ex.set "clipboard-=unnamedplus")
(set nvim.o.undodir (.. (nvim.fn.stdpath "data") "/undo"))
