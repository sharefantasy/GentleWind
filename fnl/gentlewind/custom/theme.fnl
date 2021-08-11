(module gentlewind.custom.telescope
        {autoload {nvim aniseed.nvim
                        a aniseed.core}})

(set nvim.o.background :dark)
(require :zephyr)

(set nvim.g.conjure#eval#result_register "*")
(set nvim.g.conjure#log#botright true)
