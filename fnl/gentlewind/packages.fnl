(module gentlewind.packages
        {autoload {packer packer}
                  require-macros [gentlewind.macros]})

(packages
 (layer :basic
        (spec :wbthomason/packer.nvim)
        (spec :hrsh7th/nvim-compe)
        (spec :nvim-lua/plenary.nvim)
        (spec :nvim-treesitter/nvim-treesitter)
        (spec :tami5/compe-conjure :requires [:hrsh7th/nvim-compe])
        ;; fennel
        (spec :Olical/aniseed)
        (spec :tsbohc/zest.nvim)
        (spec :Olical/nvim-local-fennel :requires [:Olical/aniseed])
        (spec :Olical/conjure :branch :develop))

 (layer :layout
        (spec :kyazdani42/nvim-web-devicons)
        (spec :yamatsum/nvim-nonicons :requires [:kyazdani42/nvim-web-devicons])
        (spec :glepnir/zephyr-nvim)
        (spec :norcalli/nvim-colorizer.lua)
        (spec :glepnir/galaxyline.nvim)

        (spec :francoiscabrol/ranger.vim)
        (spec :kyazdani42/nvim-tree.lua :requires :kyazdani42/nvim-web-devicons)
        (spec :folke/which-key.nvim)
        (spec :sharefantasy/transient)
        (spec :rcarriga/nvim-notify)
        (spec :romgrk/barbar.nvim))

 (layer :editor
        (spec :Olical/vim-enmasse)
        (spec :PeterRincker/vim-argumentative)
        (spec :jiangmiao/auto-pairs)
        (spec :liuchengxu/vim-better-default)
        (spec :mbbill/undotree)
        (spec :haya14busa/incsearch.vim)
        (spec :dense-analysis/ale)
        (spec :guns/vim-sexp)
        (spec :tpope/vim-sexp-mappings-for-regular-people)
        (spec :tpope/vim-surround)
        (spec :tpope/vim-unimpaired)
        (spec :tpope/vim-vinegar)
        (spec :tpope/vim-repeat)
        (spec :tpope/vim-abolish)
        (spec :tpope/vim-commentary)
        (spec :tpope/vim-eunuch)
        (spec :tpope/vim-sleuth)
        (spec :justinmk/vim-sneak)
        (spec :norcalli/snippets.nvim))

 (layer :extension
        (spec :tweekmonster/startuptime.vim)
        (spec :tpope/vim-dadbod)
        (spec :tpope/vim-dispatch)
        (spec :radenling/vim-dispatch-neovim)
        (spec :akinsho/nvim-toggleterm.lua)
        (spec :neomake/neomake)
        (spec :glacambre/firenvim :run "firenvim#install(0)")
        (spec :lambdalisue/suda.vim)
        (rocks :luafilesystem)
        (rocks :ldbus :server "https://luarocks.org/dev"))

 (layer :lsp
        (spec :neovim/nvim-lspconfig)
        (spec :kabouzeid/nvim-lspinstall)
        (spec :glepnir/lspsaga.nvim)
        (spec :folke/lsp-colors.nvim)
        (spec :mfussenegger/nvim-dap :requires [:nvim-treesitter/nvim-treesitter])
        (spec :rcarriga/nvim-dap-ui :requires [:mfussenegger/nvim-dap])
        (spec :theHamsta/nvim-dap-virtual-text :requires [:rcarriga/nvim-dap-ui])
        (spec :jose-elias-alvarez/null-ls.nvim)
        (spec :romgrk/nvim-treesitter-context)
        (spec :kosayoda/nvim-lightbulb :requires [:nvim-treesitter/nvim-treesitter])
        (spec :folke/trouble.nvim))

 (layer :git
        (spec :lewis6991/gitsigns.nvim :requires [:nvim-lua/plenary.nvim])
        (spec :sindrets/diffview.nvim :requires [:kyazdani42/nvim-web-devicons])
        (spec :TimUntersberger/neogit :requires [:nvim-lua/plenary.nvim :sindrets/diffview.nvim]))

 (layer :project
        (spec :vijaymarupudi/nvim-fzf)
        (spec :nvim-telescope/telescope.nvim :requires [:nvim-lua/popup.nvim :nvim-lua/plenary.nvim :kyazdani42/nvim-web-devicons])
        (spec :nvim-telescope/telescope-hop.nvim :requires [:nvim-telescope/telescope.nvim])
        (spec :nvim-telescope/telescope-frecency.nvim :requires [:nvim-telescope/telescope.nvim :tami5/sql.nvim])
        (spec :nvim-telescope/telescope-project.nvim :requires :nvim-telescope/telescope.nvim)
        (spec :nvim-telescope/telescope-packer.nvim :requires [:nvim-telescope/telescope.nvim :wbthomason/packer.nvim ])
        (spec :nvim-telescope/telescope-snippets.nvim :requires [:nvim-telescope/telescope.nvim :norcalli/snippets.nvim])
        ;; 书签
        (spec :MattesGroeger/vim-bookmarks)
        (spec :tom-anders/telescope-vim-bookmarks.nvim :requires [:nvim-telescope/telescope.nvim :MattesGroeger/vim-bookmarks]))

 (layer :ftmodes
        (spec :kristijanhusak/orgmode.nvim)
        (spec :wlangstroth/vim-racket)
        (spec :ray-x/go.nvim)))
