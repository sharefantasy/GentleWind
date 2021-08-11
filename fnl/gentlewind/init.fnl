(module gentlewind.init
        {autoload {nvim aniseed.nvim
                        packer packer
                        utils gentlewind.utils}
                  require-macros [gentlewind.macros]})



(set nvim.o.termguicolors true)
(set nvim.o.mouse "a")
(set nvim.o.updatetime 500)
(set nvim.o.timeoutlen 500)
(set nvim.o.sessionoptions "blank,curdir,folds,help,tabpages,winsize")
(set nvim.o.inccommand :split)
(set nvim.o.tabstop 2)

(nvim.ex.set :spell)
(nvim.ex.set :list)

(autocmd "BufWritePost plugins.lua source <afile> | PackerCompile")

(fn loads [ ... ]
    (let [body [...]
          ok? true
          i 1]
      (while ok?
             (let [modname (. body i)]
               (match (pcall requires modname) (ok? _))
               (+ 1 i)))
      (if ok?
          (print "load complete")
          (print "load failed"))))

(loads
 :gentlewind.packages
 :gentlewind.custom.theme
 :gentlewind.custom.lsp
 :gentlewind.custom.git
 :gentlewind.custom.telescope
 :gentlewind.mapping)
