(module gentlewind.plugin.funcs
        {autoload {a aniseed.core}
                  require-macros [aniseed.macros]})


;; set global layers management
(local layers {})
;; define plugins set, only order by name and define order
(local plugins {})

(local flags {:#gentlewind-plugin true :#gentlewind-layer true})

;; load
(fn load-plugin-modification [modname opts]
    (let [(ok? val-or-err) (pcall require (.. :gentlewind.plugin. modname))]
      (if ok?
          (when (= (type val-or-err) :table)
            (-?>> (. val-or-err :config) (tset opts :config))
            opts)
          (print "dotfile error: s" val-or-err))))

;; --------------------------------------------------
(fn base/define []
    {:enable true})

;; define spec
(fn spec/define [name]
    {1 name
       :#gentlewind-plugin true})

(fn spec? [maybe-spec]
    (and (table? maybe-spec) (~= (?. maybe-spec :#gentlewind-plugin) nil)))

(fn spec/set-config [spec key val]
    (when (spec? spec)
      (tset spec key val)
      spec))

(fn spec/get-name [spec]
    (when (spec? spec)
      (. spec :name)))




;; --------------------------------------------------

(fn layer/define [name]
    {:name name
     :module_path "" ;; eg. gentlewind.layers.example
     :plugins {}
     :before_load nil
     :after_load nil
     :#gentlewind-layer true})

(fn layer? [maybe-layer]
    (and (table? maybe-spec) (~= (?. maybe-spec :#gentlewind-layer) nil)))

(fn clear-flags [obj]
    "remove plugin management flags to avoid unexpected collision"
    (when (table? obj)
      (each [k v obj]
            (if (~= (?. flags v) nil)
                (tset obj k nil))
            (when (table? v)
              (clear-flags v)))))

;; example
(comment
 (packages :internal
           (layer :example
                  (spec :example-spec1)
                  (spec :example-spec2))
           (layer :example2
                  (spec :example-spec3)
                  (spec :example-spec4))))
