(module gentlewind.plugin.macros
        {autoload {a aniseed.core
                     funcs gentlewind.plugin.funcs}
                  require-macros [aniseed.macros]})

(fn make_use [func pkg ... ]
    (let [opts [...]
          spec (funcs.define-spec pkg)]
      (when (not (= (length opts) 0))
        (for [i 1 (length opts) 2]
             (let [key (. opts i)
                   val (. opts (+ i 1))]
               (funcs.spec/set-config spec key val))))
      `(,func ,spec)))

(fn spec/macro [pkg ...] (make_use 'use pkg ...))
(fn spec-rocks/macro [pkg ...] (make_use 'use_rocks pkg ...))
(fn spec-layer/macro [pkg ...] "layer customize functions" (use 'use_rocks pkg ...)))

(fn layer/macro [name ...]
    (if (. layers name)
        (error (.. "layer '" name "' is defined"))
        (let [specs [...]
              resultlayer (funcs.layer/define name)])))

;; -------------------- Plugin system --------------------
{
 :spec spec/macro
 :rocks spec-rocks/macro
 }
