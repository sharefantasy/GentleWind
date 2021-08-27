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
           ;; 定义几个枚举方法, 以fruits为例
           (let [
                 body [...]
                 check-has-doc (fn () (= (type (a.first body)) "string"))
                 enumdoc (if (check-hasdoc) (a.first body) (.. "enum " (string typename)))
                 elements (if (check-hasdoc) (a.rest body) body)
                 ]
             (a.run! (fn [e] (assert e)) elements)
             ;; (fruits?)
             `(defn ,(sym (.. (string typename)"?"))

                )
             ;; (fruits) 枚举全集
             `()
             ;; 定义符号
             ;; 值集合
             []
             )

           )

 }
