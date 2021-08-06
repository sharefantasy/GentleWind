local _2afile_2a = "/Users/fankainang/.config/nvim/fnl/dotfiles/mapping.fnl"
local _0_
do
  local name_0_ = "dotfiles.mapping"
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
    return {autoload("aniseed.core"), autoload("neogit"), autoload("aniseed.nvim.util"), autoload("aniseed.nvim"), autoload("telescope._extensions.project.actions"), autoload("telescope.actions"), autoload("telescope.builtin"), autoload("telescope"), autoload("dotfiles.utils"), autoload("which-key")}
  end
  ok_3f_0_, val_0_ = pcall(_2_)
  if ok_3f_0_ then
    _0_["aniseed/local-fns"] = {["require-macros"] = {["dotfiles.macros"] = true}, autoload = {["tele-project-action"] = "telescope._extensions.project.actions", a = "aniseed.core", neogit = "neogit", nu = "aniseed.nvim.util", nvim = "aniseed.nvim", teleactions = "telescope.actions", telebuiltin = "telescope.builtin", telescope = "telescope", utils = "dotfiles.utils", wk = "which-key"}}
    return val_0_
  else
    return print(val_0_)
  end
end
local _local_0_ = _2_(...)
local a = _local_0_[1]
local wk = _local_0_[10]
local neogit = _local_0_[2]
local nu = _local_0_[3]
local nvim = _local_0_[4]
local tele_project_action = _local_0_[5]
local teleactions = _local_0_[6]
local telebuiltin = _local_0_[7]
local telescope = _local_0_[8]
local utils = _local_0_[9]
local _2amodule_2a = _0_
local _2amodule_name_2a = "dotfiles.mapping"
do local _ = ({nil, _0_, nil, {{nil}, nil, nil, nil}})[2] end
nvim.g.mapleader = " "
nvim.g.maplocalleader = ","
local function jump_by_number()
  local result = {}
  for i = 1, 5 do
    local function _3_()
      return nvim.fn.win_gotoid(nvim.fn.win_getid(i))
    end
    a.assoc(result, a.str(i), {_3_, ("Window " .. i)})
  end
  return result
end
local function _3_()
  return telebuiltin.live_grep()
end
local function _4_()
  return telebuiltin.buffers()
end
local function _5_()
  return teleactions.delete_buffer()
end
local function _6_()
  return telebuiltin.find_files()
end
local function _7_()
  return telescope.extensions.frecency.frecency()
end
local function _8_()
  return telebuiltin.man_pages()
end
local function _9_()
  return telescope.extensions.packer.plugins({})
end
local function _10_()
  return telebuiltin.oldfiles()
end
local function _11_()
  return neogit.open({kind = "vsplit"})
end
local function _12_()
  return telescope.extensions.snippets.snippets({})
end
local function _13_()
  return telescope.extensions.vim_bookmarks.all()
end
local function _14_()
  return telescope.extensions.vim_bookmarks.current_file()
end
local function _15_()
  return telebuiltin.git_files()
end
local function _16_()
  return telescope.extensions.project.project({})
end
local function _17_()
  return nvim.ex.split()
end
local function _18_()
  return nvim.ex.vsplit()
end
return wk.register({["-"] = {"<cmd>Ranger<CR>", "ranger"}, ["<leader>"] = a.merge({["/"] = {_3_, "Grep Files"}, b = {b = {_4_, "List Buffers"}, d = {_5_, "Delete Buffer"}, name = "+buffer"}, f = {["/"] = {"<cmd>Telescope<CR>", "Telescope"}, d = {_6_, "Find Files In Directory"}, f = {_7_, "Smart Find"}, h = {_8_, "Open Man Pages"}, name = "+file", p = {_9_, "Telescope Packer"}, r = {_10_, "Open recent files"}}, g = {name = "+git", s = {_11_, "Git Status"}}, i = {name = "+insert", s = {_12_, "Telescope Snippets"}}, n = {a = {"<Plug>BookmarkAnnotate", "Bookmark Annotate"}, b = {_13_, "Show All Bookmarks"}, c = {"<Plug>BookmarkClear", "Bookmark Clear"}, f = {_14_, "Show Bookmarks In File"}, j = {"<Plug>BookmarkNext", "Bookmark Next"}, k = {"<Plug>BookmarkPrev", "Bookmark Prev"}, name = "+bookmarks", t = {"<Plug>BookmarkToggle", "Bookmark Toggle"}}, name = "+leader", p = {f = {_15_, "Open Project File"}, name = "+project", p = {_16_, "Open Projects"}}, w = {["-"] = {_17_, "Horizontal Split Window"}, ["/"] = {_18_, "Vertical Split Window"}, m = {nvim.ex.only, "Maximize"}, name = "+window"}}, jump_by_number())})