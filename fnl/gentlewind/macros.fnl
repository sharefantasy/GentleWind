{
 :augroup (fn [name ...]
            `(do
               (nvim.ex.augroup ,(tostring name))
               (nvim.ex.autocmd_)
               ,(list `do ...)
               (nvim.ex.augroup :END)))

 :autocmd (fn [...]
            `(nvim.ex.autocmd ,...))

 :_: (fn [name ...]
       `((. nvim.ex ,(tostring name)) ,...))

 :viml->fn (fn [name]
             `(.. "lua require('" *module-name* "')['" ,(tostring name) "']()"))

 :loads (fn [modname setup ...]
                   (let [args ...]
                     `(let [(ok?# modname#) (require ,modname)]
                        (if ok?#
                            ((. modname# ,setup) ,args)
                            (print "load fail: " modname#))
                        )))

 :noremap (fn [name from to]
            `(nvim.set_keymap ,mode ,from ,to {:noremap true}))
 }
