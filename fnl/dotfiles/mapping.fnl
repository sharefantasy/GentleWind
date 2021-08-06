(module dotfiles.mapping
        {autoload {
                   utils dotfiles.utils
                   nvim aniseed.nvim
                   a aniseed.core
                   nu aniseed.nvim.util
                   wk which-key
                   telescope telescope
                   telebuiltin telescope.builtin
                   teleactions telescope.actions
                   tele-project-action telescope._extensions.project.actions
                   neogit neogit
                   }
         require-macros [dotfiles.macros]})


(set nvim.g.mapleader " ")
(set nvim.g.maplocalleader ",")


(macro jump-by-winr [i]
        `(fn [] (nvim.fn.win_gotoid (nvim.fn.win_getid ,i))))


(fn jump-by-number []
        "Define window jumping by winnr"
        (let [result {}]
                (for [i 1 5]
                        (a.assoc result (a.str i) [ (jump-by-winr i) (.. "Window " i)]))
                result))

(wk.register {:<leader>
              (a.merge {:name :+leader
                         :f {:name :+file
                             :h [(fn [] (telebuiltin.help_tags)) "Help Tags"]
                             :r [(fn [] (telebuiltin.oldfiles)) "Open recent files"]
                             :d [(fn [] (telebuiltin.find_files)) "Find Files In Directory"]
                             :h [(fn [] (telebuiltin.man_pages)) "Open Man Pages"]
                             :f [(fn [] (telescope.extensions.frecency.frecency)) "Smart Find"]
                             :p [(fn [] (telescope.extensions.packer.plugins {})) "Telescope Packer"]
                             :/ ["<cmd>Telescope<CR>" "Telescope"]
                             }
                         :b {:name :+buffer
                             :b [(fn [] (telebuiltin.buffers)) "List Buffers"]
                             :d [(fn [] (teleactions.delete_buffer)) "Delete Buffer"]
                             }
                         :p {:name :+project
                             :p [(fn [] (telescope.extensions.project.project {})) "Open Projects"]
                             :f [(fn [] (telebuiltin.git_files)) "Open Project File"]
                             }
                         :g {:name :+git
                             :s [(fn [] (neogit.open {:kind :vsplit})) "Git Status"]
                             }
                         :w  {:name :+window
                              :/ [(fn [] (nvim.ex.vsplit)) "Vertical Split Window"]
                              :- [(fn [] (nvim.ex.split)) "Horizontal Split Window"]
                              :m [ nvim.ex.only "Maximize"]}
                         :/ [(fn [] (telebuiltin.live_grep)) "Grep Files"]
                         :i {:name :+insert
                             :s [(fn [] (telescope.extensions.snippets.snippets {})) "Telescope Snippets"]}
                         :n {:name :+bookmarks
                             :a [ "<Plug>BookmarkAnnotate" "Bookmark Annotate" ]
                             :t [ "<Plug>BookmarkToggle" "Bookmark Toggle" ]
                             :c [ "<Plug>BookmarkClear" "Bookmark Clear" ]
                             :j [ "<Plug>BookmarkNext" "Bookmark Next" ]
                             :k [ "<Plug>BookmarkPrev" "Bookmark Prev" ]
                             :b [(fn [] (telescope.extensions.vim_bookmarks.all)) "Show All Bookmarks"]
                             :f [(fn [] (telescope.extensions.vim_bookmarks.current_file)) "Show Bookmarks In File"]
                             }
                         }
                       (jump-by-number))
              :- [:<cmd>Ranger<CR> :ranger]})
