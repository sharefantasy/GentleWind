
(module gentlewind.custom.lsp
        {autoload {nvim aniseed.nvim
                        a aniseed.core
                        neogit neogit
                        diffview diffview
                        }})

(neogit.setup {
               :disable_signs false
               :disable_context_highlighting false
               :disable_commit_confirmation false
               ;; customize displayed signs
               :signs {
                       ;; { CLOSED, OPENED }
                       :section [ ">" "v" ]
                       :item [ ">" "v" ]
                       :hunk [ "" "" ] }
               :integrations {
                              :diffview true
                              }
               :mappings {
                          :status {
                                   :B "BranchPopup"
                                   }
                          }})

(let [
      cb (. (require :diffview.config) :diffview_callback)]
  (diffview.setup {
                   :diff_binaries false
                   :file_panel {
                                :width 35
                                :use_icons true
                                }
                   :key_bindings {
                                  :disable_defaults false
                                  :view {
                                         :<tab> (cb :select_next_entry)
                                         :<s-tab> (cb :select_prev_entry)
                                         :<leader>e (cb :focus_files)
                                         :<leader>b (cb :toggle_files)
                                         }
                                  :file_panel {
                                               :j (cb "next_entry")
                                               :<down> (cb "next_entry")
                                               :k (cb "prev_entry")
                                               :<up> (cb "prev_entry")
                                               :<cr>          (cb "select_entry")
                                               :o              (cb "select_entry")
                                               :-              (cb "toggle_stage_entry")
                                               :S              (cb "stage_all")
                                               :U              (cb "unstage_all")
                                               :X              (cb "restore_entry")
                                               :R              (cb "refresh_files")
                                               :<tab>          (cb "select_next_entry")
                                               :<s-tab>        (cb "select_prev_entry")
                                               :<leader>e      (cb "focus_files")
                                               :<leader>b      (cb "toggle_files")
                                               }}}))
