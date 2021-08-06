(module gentlewind.utils
    {autoload {
               nvim aniseed.nvim
               core aniseed.core
               as aniseed.string }})

;; load
(defn load-dir [suffix]
    "Load all lua files under the given directory"
    (let [(ok? lfs) (pcall require :lfs)]
        (if ok?
            (each [f (lfs.dir (as.join :/ [ (nvim.fn.stdpath :config) :lua :gentlewind suffix]) )]
                (when (or (string.find f :.lua) (string.find f :.fnl))
                    (let [modname (string.match f "(%a*).")
                          (ok? val) (pcall require (as.join :. [:gentlewind suffix modname]))]
                        (when (not ok?)
                            (print (.. "failed mappings: (file=" f ", error=" val ")"))))))
            (print "lfs load failed: " lfs))))

