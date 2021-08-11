(module gentlewind.custom.lsp
        {autoload {nvim aniseed.nvim
                        a aniseed.core
                        lightbulb nvim-lightbulb
                        }})

(defn init []
  (let [auto-pairs nvim.g.AutoPairs]
    (tset auto-pairs "'" nil)
    (tset auto-pairs "`" nil)
    (set nvim.b.AutoPairs auto-pairs)))

(vim.schedule
 (fn []
     (nvim.ex.autocmd
      :FileType
      "clojure,fennel,scheme,emacslisp"
      "lua require('gentlewind.plugin.auto-pairs').init()")))

(set nvim.g.gexp_filetypes "clojure,scheme,lisp,timl,fennel,emacslisp")
(set nvim.g.ale_linters
     {:javascript [:standard]
      :clojure [:clj-kondo :joker]})

(lightbulb.update_lightbulb
 {:sign {:enabled true :priority 10}
  :float {
          :enabled true
          ;; Text to show in the popup float
          :text "💡"
          ;; Available keys for window options:
          ;; - height     of floating window
          ;; - width      of floating window
          ;; - wrap_at    character to wrap at for computing height
          ;; - max_width  maximal width of floating window
          ;; - max_height maximal height of floating window
          ;; - pad_left   number of columns to pad contents at left
          ;; - pad_right  number of columns to pad contents at right
          ;; - pad_top    number of lines to pad contents at top
          ;; - pad_bottom number of lines to pad contents at bottom
          ;; - offset_x   x-axis offset of the floating window
          ;; - offset_y   y-axis offset of the floating window
          ;; - anchor     corner of float to place at the cursor (NW, NE, SW, SE)
          ;; - winblend   transparency of the window (0-100)
          :win_opts {}}
  :status_text {
                :enabled true
                ;; Text to provide when code actions are available
                :text "💡"
                ;; Text to provide when no actions are available
                :text_unavailable ""
                }})

(macro set-server [server]
       `((. (. (require :lspconfig) ,server) :setup) {}))

{
 :config (fn []
             (set-server :gopls)
             (set-server :pyright))
 }
