(module gentlewind.plugin.neogit)


{
 :config (fn []
(let [(ok? neogit) (pcall require :neogit)]
                              (if (not ok?)
(print "load neogit failed: " neogit)
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
                          }}))))}
