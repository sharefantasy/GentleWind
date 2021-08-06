(module gentlewind.plugin.compe)

{
 :config (fn []
             (let [(ok? nvim) (pcall require :aniseed.nvim)]
               (when ok?
                 (set nvim.o.completeopt "menuone,noselect")))
             (let [(ok? compe) (pcall require :compe)]
               (if ok?
                   ((. compe :setup) {
                                      :enable true
                                      :autocomplete true
                                      :debug false
                                      :min_length 1
                                      :preselect "enable"
                                      :throttle_time 80
                                      :source_timeout 200
                                      :incomplete_delay 400
                                      :max_abbr_width 100
                                      :max_kind_width 100
                                      :documentation true
                                      :source {
                                               :path true
                                               :buffer true
                                               :calc true
                                               :nvim_lsp true
                                               :conjure true
                                               :vsnip true}})
                   (print "load compe error: "compe))))
 }
