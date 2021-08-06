(module dotfiles.plugin.bookmarks)

{
 :config (fn [] 
               (let [(ok? nvim) (pcall require "aniseed.nvim")]
                     (when ok?
                           (set nvim.g.bookmark_no_default_key_mappings 1)
                           )))
 }


