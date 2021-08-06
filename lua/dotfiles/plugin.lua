local _2afile_2a = "/Users/fankainang/.config/nvim/fnl/dotfiles/plugin.fnl"
local _0_
do
  local name_0_ = "dotfiles.plugin"
  local module_0_
  do
    local x_0_ = package.loaded[name_0_]
    if ("table" == type(x_0_)) then
      module_0_ = x_0_
    else
      module_0_ = {}
    end
  end
  module_0_["aniseed/module"] = name_0_
  module_0_["aniseed/locals"] = ((module_0_)["aniseed/locals"] or {})
  do end (module_0_)["aniseed/local-fns"] = ((module_0_)["aniseed/local-fns"] or {})
  do end (package.loaded)[name_0_] = module_0_
  _0_ = module_0_
end
local autoload
local function _1_(...)
  return (require("aniseed.autoload")).autoload(...)
end
autoload = _1_
local function _2_(...)
  local ok_3f_0_, val_0_ = nil, nil
  local function _2_()
    return {autoload("aniseed.core"), autoload("aniseed.nvim"), autoload("packer"), autoload("dotfiles.utils")}
  end
  ok_3f_0_, val_0_ = pcall(_2_)
  if ok_3f_0_ then
    _0_["aniseed/local-fns"] = {autoload = {a = "aniseed.core", nvim = "aniseed.nvim", packer = "packer", utils = "dotfiles.utils"}}
    return val_0_
  else
    return print(val_0_)
  end
end
local _local_0_ = _2_(...)
local a = _local_0_[1]
local nvim = _local_0_[2]
local packer = _local_0_[3]
local utils = _local_0_[4]
local _2amodule_2a = _0_
local _2amodule_name_2a = "dotfiles.plugin"
do local _ = ({nil, _0_, nil, {{}, nil, nil, nil}})[2] end
local load_plugin_modification
do
  local v_0_
  local function load_plugin_modification0(modname, opts)
    local ok_3f, val_or_err = pcall(require, ("dotfiles.plugin." .. modname))
    if ok_3f then
      if (type(val_or_err) == "table") then
        do
          local _3_ = val_or_err.config
          if _3_ then
            opts["config"] = _3_
          else
          end
        end
        return opts
      end
    else
      return print("dotfile error: s", val_or_err)
    end
  end
  v_0_ = load_plugin_modification0
  local t_0_ = (_0_)["aniseed/locals"]
  t_0_["load-plugin-modification"] = v_0_
  load_plugin_modification = v_0_
end
local use
do
  local v_0_
  local function use0(...)
    local pkgs = {...}
    local function _3_(use1, use_rocks)
      for i = 1, a.count(pkgs), 2 do
        local name = pkgs[i]
        local opts = pkgs[(i + 1)]
        do
          local _4_ = opts.mod
          if _4_ then
            load_plugin_modification(_4_, opts)
          else
          end
        end
        local _5_
        if opts.rocks then
          _5_ = use_rocks
        else
          _5_ = use1
        end
        _5_(a.assoc(opts, 1, name))
      end
      return nil
    end
    return packer.startup(_3_)
  end
  v_0_ = use0
  local t_0_ = (_0_)["aniseed/locals"]
  t_0_["use"] = v_0_
  use = v_0_
end
use("wbthomason/packer.nvim", {}, "luafilesystem", {rocks = true}, "Olical/aniseed", {}, "hrsh7th/nvim-compe", {mod = "compe"}, "Olical/conjure", {branch = "develop", mod = "conjure"}, "nvim-treesitter/nvim-treesitter", {}, "Olical/nvim-local-fennel", {requires = {"Olical/aniseed"}}, "nvim-lua/plenary.nvim", {}, "tami5/compe-conjure", {requires = {"hrsh7th/nvim-compe"}}, "kyazdani42/nvim-web-devicons", {}, "hoob3rt/lualine.nvim", {}, "glepnir/zephyr-nvim", {mod = "zephyr", requires = {"Olical/aniseed"}}, "norcalli/nvim-colorizer.lua", {}, "kristijanhusak/orgmode.nvim", {}, "tweekmonster/startuptime.vim", {}, "lambdalisue/suda.vim", {}, "francoiscabrol/ranger.vim", {}, "PeterRincker/vim-argumentative", {}, "jiangmiao/auto-pairs", {mod = "auto-pairs"}, "liuchengxu/vim-better-default", {}, "mbbill/undotree", {mod = "undotree"}, "haya14busa/incsearch.vim", {}, "dense-analysis/ale", {mod = "ale"}, "glacambre/firenvim", {run = "firenvim#install(0)"}, "folke/which-key.nvim", {}, "folke/trouble.nvim", {}, "kyazdani42/nvim-tree.lua", {requires = "kyazdani42/nvim-web-devicons"}, "guns/vim-sexp", {mod = "sexp"}, "tpope/vim-sexp-mappings-for-regular-people", {}, "tpope/vim-surround", {}, "tpope/vim-unimpaired", {}, "tpope/vim-vinegar", {}, "tpope/vim-repeat", {}, "tpope/vim-abolish", {}, "tpope/vim-commentary", {}, "tpope/vim-dadbod", {}, "tpope/vim-dispatch", {}, "radenling/vim-dispatch-neovim", {}, "tpope/vim-eunuch", {}, "tpope/vim-sleuth", {}, "justinmk/vim-sneak", {}, "norcalli/snippets.nvim", {}, "kosayoda/nvim-lightbulb", {mod = "lightbulb", requires = {"nvim-treesitter/nvim-treesitter"}}, "neovim/nvim-lspconfig", {mod = "lspconfig"}, "glepnir/lspsaga.nvim", {}, "folke/lsp-colors.nvim", {}, "mfussenegger/nvim-dap", {requires = {"nvim-treesitter/nvim-treesitter"}}, "rcarriga/nvim-dap-ui", {requires = {"mfussenegger/nvim-dap"}}, "theHamsta/nvim-dap-virtual-text", {requires = {"rcarriga/nvim-dap-ui"}}, "jose-elias-alvarez/null-ls.nvim", {}, "neomake/neomake", {}, "lewis6991/gitsigns.nvim", {requires = {"nvim-lua/plenary.nvim"}}, "sindrets/diffview.nvim", {mod = "diffview", requires = {"kyazdani42/nvim-web-devicons"}}, "TimUntersberger/neogit", {mod = "neogit", requires = {"nvim-lua/plenary.nvim", "sindrets/diffview.nvim"}}, "vijaymarupudi/nvim-fzf", {mod = "fzf"}, "nvim-telescope/telescope.nvim", {requires = {"nvim-lua/popup.nvim", "nvim-lua/plenary.nvim", "kyazdani42/nvim-web-devicons"}}, "nvim-telescope/telescope-hop.nvim", {requires = {"nvim-telescope/telescope.nvim"}}, "nvim-telescope/telescope-frecency.nvim", {requires = {"nvim-telescope/telescope.nvim", "tami5/sql.nvim"}}, "nvim-telescope/telescope-project.nvim", {requires = "nvim-telescope/telescope.nvim"}, "nvim-telescope/telescope-packer.nvim", {requires = {"nvim-telescope/telescope.nvim", "wbthomason/packer.nvim"}}, "nvim-telescope/telescope-snippets.nvim", {requires = {"nvim-telescope/telescope.nvim", "norcalli/snippets.nvim"}}, "MattesGroeger/vim-bookmarks", {mod = "bookmarks"}, "tom-anders/telescope-vim-bookmarks.nvim", {requires = {"nvim-telescope/telescope.nvim", "MattesGroeger/vim-bookmarks"}}, "wlangstroth/vim-racket", {}, "ray-x/go.nvim", {})
return utils["load-dir"]("custom")