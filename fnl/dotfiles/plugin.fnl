(module dotfiles.plugin {autoload {
                                   utils dotfiles.utils
                                   nvim aniseed.nvim
                                   a aniseed.core
                                   packer packer}})

(defn- load-plugin-modification [modname opts]
  (let [(ok? val-or-err) (pcall require (.. :dotfiles.plugin. modname))]
    (if ok?
      (when (= (type val-or-err) :table)
        (-?>> (. val-or-err :config) (tset opts :config))
        opts)
      (print "dotfile error: s" val-or-err))))

(defn- use [...]
  "Install plugins by packer.nvim, specified "
  (let [pkgs [...]]
    (packer.startup (fn [use use_rocks]
                      (for [i 1 (a.count pkgs) 2]
                        (let [name (. pkgs i)
                              opts (. pkgs (+ i 1))]
                          (-?> (. opts :mod) (load-plugin-modification opts))
                          ((if (. opts :rocks) use_rocks use) (a.assoc opts 1 name))))))))


;; 加载第三方依赖
(use
  ;; 基本依赖
  :wbthomason/packer.nvim {}
  :luafilesystem {:rocks true}
  :Olical/aniseed {}
  :hrsh7th/nvim-compe {:mod :compe}
  :Olical/conjure {:branch :develop :mod :conjure}
  :nvim-treesitter/nvim-treesitter {}
  :Olical/nvim-local-fennel {:requires [:Olical/aniseed]}
  :nvim-lua/plenary.nvim {}

  :tami5/compe-conjure {:requires [:hrsh7th/nvim-compe]}
  :kyazdani42/nvim-web-devicons {}
  :hoob3rt/lualine.nvim {}
  :glepnir/zephyr-nvim {:requires [:Olical/aniseed] :mod :zephyr}
  :norcalli/nvim-colorizer.lua {}
  ;; 通用功能
  :kristijanhusak/orgmode.nvim {}
  :tweekmonster/startuptime.vim {}
  :lambdalisue/suda.vim {}
  :francoiscabrol/ranger.vim {}
  ;; :Olical/vim-enmasse {}
  :PeterRincker/vim-argumentative {}
  :jiangmiao/auto-pairs {:mod :auto-pairs}
  :liuchengxu/vim-better-default {}
  :mbbill/undotree {:mod :undotree}
  :haya14busa/incsearch.vim {}
  :dense-analysis/ale {:mod :ale}

  ;; 拓展功能
  :glacambre/firenvim {:run "firenvim#install(0)"}

  ; 编辑器功能
  :folke/which-key.nvim {}
  :folke/trouble.nvim {}
  :kyazdani42/nvim-tree.lua {:requires :kyazdani42/nvim-web-devicons}
  :guns/vim-sexp {:mod :sexp}
  :tpope/vim-sexp-mappings-for-regular-people {}
  :tpope/vim-surround {}
  :tpope/vim-unimpaired {}
  :tpope/vim-vinegar {}
  :tpope/vim-repeat {}
  :tpope/vim-abolish {}
  :tpope/vim-commentary {}
  :tpope/vim-dadbod {}
  :tpope/vim-dispatch {}
  :radenling/vim-dispatch-neovim {}
  :tpope/vim-eunuch {}
  :tpope/vim-sleuth {}
  :justinmk/vim-sneak {}
  :norcalli/snippets.nvim {}
  ;; lsp配置
  :kosayoda/nvim-lightbulb {:requires [:nvim-treesitter/nvim-treesitter]
                            :mod :lightbulb}
  :neovim/nvim-lspconfig {:mod :lspconfig}
  :glepnir/lspsaga.nvim {}
  :folke/lsp-colors.nvim {}
  :mfussenegger/nvim-dap {:requires [:nvim-treesitter/nvim-treesitter]}
  :rcarriga/nvim-dap-ui {:requires [:mfussenegger/nvim-dap]}
  :theHamsta/nvim-dap-virtual-text {:requires [:rcarriga/nvim-dap-ui]}
  :jose-elias-alvarez/null-ls.nvim {}
  ;; 开发配置
  :neomake/neomake {}

  ;; git 配置
  :lewis6991/gitsigns.nvim {:requires [:nvim-lua/plenary.nvim]}
  :sindrets/diffview.nvim {:requires [:kyazdani42/nvim-web-devicons] :mod :diffview}
  :TimUntersberger/neogit {:requires [:nvim-lua/plenary.nvim :sindrets/diffview.nvim] :mod :neogit}
  :vijaymarupudi/nvim-fzf {:mod :fzf}

  ;; 项目管理
  :nvim-telescope/telescope.nvim {:requires [:nvim-lua/popup.nvim
                                             :nvim-lua/plenary.nvim :kyazdani42/nvim-web-devicons] }
  :nvim-telescope/telescope-hop.nvim {:requires [:nvim-telescope/telescope.nvim] }
  :nvim-telescope/telescope-frecency.nvim {:requires [:nvim-telescope/telescope.nvim :tami5/sql.nvim] }
  :nvim-telescope/telescope-project.nvim {:requires :nvim-telescope/telescope.nvim}
  :nvim-telescope/telescope-packer.nvim {:requires [:nvim-telescope/telescope.nvim :wbthomason/packer.nvim ]}
  :nvim-telescope/telescope-snippets.nvim {:requires [:nvim-telescope/telescope.nvim :norcalli/snippets.nvim]}
  ;; 书签
  :MattesGroeger/vim-bookmarks {:mod :bookmarks}
  :tom-anders/telescope-vim-bookmarks.nvim {:requires [:nvim-telescope/telescope.nvim :MattesGroeger/vim-bookmarks]}

  ;; 语言
  :wlangstroth/vim-racket {}
  :ray-x/go.nvim {}
  )

(utils.load-dir :custom)
