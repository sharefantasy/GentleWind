(module gentlewind.custom.telescope {autoload {nvim aniseed.nvim
                                             a aniseed.core
                                             reload plenary.reload
                                             telescope telescope
                                             teleactions telescope.actions
                                             }})



;; "配置telescope，增加project，dashboard等支持"
(telescope.setup {
                  :defaults {
                             :mappings {
                                        :i {
                                            "<C-,>" (fn [prompt_bufn] (telescope.extensions.hop._hop prompt_bufn {:callback teleactions.select_default})) }}}
                  :extensions {
                               :project {
                                         :hidden_files true
                                         }
                               :hop {
                                     :keys [ "a" "s" "d" "f" "g" "h" "j" "k" "l" ";"]
                                     :sign_hl ["WarningMsg" "Title"]
                                     :line_hl ["CursorLine" "Normal"]
                                     :clear_selection_hl false
                                     :trace_entry true
                                     :reset_selection true}
                               :frecency {
                                          :show_scores false
                                          :show_unindexed true
                                          :ignore_patterns ["*.git/*" "*/tmp/*"]
                                          :workspaces {
                                                       :conf   (nvim.fn.stdpath :config)
                                                       :data    (nvim.fn.stdpath :data)
                                                       }}
                                           }})

(telescope.load_extension :hop)
(telescope.load_extension :frecency)
(telescope.load_extension :packer)
(telescope.load_extension :snippets)
(telescope.load_extension :vim_bookmarks)

(set nvim.g.bookmark_no_default_key_mappings 1)
