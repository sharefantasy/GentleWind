(module gentlewind.macros
        {autoload {a aniseed.core}
                  require-macros [aniseed.marcros]})



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

 :noremap (fn [name from to]
              `(nvim.set_keymap ,mode ,from ,to {:noremap true}))

 :enum (fn [typename ...]
           ;; 定义几个枚举方法
           )

 }
