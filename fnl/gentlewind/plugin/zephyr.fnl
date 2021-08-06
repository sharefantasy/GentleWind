(module gentlewind.plugin.zephyr)

{
 :config (fn []
             (let [(ok? nvim) (pcall require :aniseed.nvim)]
               (when ok?
                 (set nvim.o.background :dark)))
             (require :zephyr))
 }
