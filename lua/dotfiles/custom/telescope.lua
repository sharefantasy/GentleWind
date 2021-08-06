local _2afile_2a = "/Users/fankainang/.config/nvim/fnl/dotfiles/custom/telescope.fnl"
local _0_
do
  local name_0_ = "dotfiles.custom.telescope"
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
    return {autoload("aniseed.core"), autoload("aniseed.nvim"), autoload("plenary.reload"), autoload("telescope.actions"), autoload("telescope")}
  end
  ok_3f_0_, val_0_ = pcall(_2_)
  if ok_3f_0_ then
    _0_["aniseed/local-fns"] = {autoload = {a = "aniseed.core", nvim = "aniseed.nvim", reload = "plenary.reload", teleactions = "telescope.actions", telescope = "telescope"}}
    return val_0_
  else
    return print(val_0_)
  end
end
local _local_0_ = _2_(...)
local a = _local_0_[1]
local nvim = _local_0_[2]
local reload = _local_0_[3]
local teleactions = _local_0_[4]
local telescope = _local_0_[5]
local _2amodule_2a = _0_
local _2amodule_name_2a = "dotfiles.custom.telescope"
do local _ = ({nil, _0_, nil, {{}, nil, nil, nil}})[2] end
local function _3_(prompt_bufn)
  return telescope.extensions.hop._hop(prompt_bufn, {callback = teleactions.select_default})
end
telescope.setup({defaults = {mappings = {i = {["<C-,>"] = _3_}}}, extensions = {frecency = {ignore_patterns = {"*.git/*", "*/tmp/*"}, show_scores = false, show_unindexed = true, workspaces = {conf = nvim.fn.stdpath("config"), data = nvim.fn.stdpath("data")}}, hop = {clear_selection_hl = false, keys = {"a", "s", "d", "f", "g", "h", "j", "k", "l", ";"}, line_hl = {"CursorLine", "Normal"}, reset_selection = true, sign_hl = {"WarningMsg", "Title"}, trace_entry = true}, project = {hidden_files = true}}})
telescope.load_extension("hop")
telescope.load_extension("frecency")
telescope.load_extension("packer")
telescope.load_extension("snippets")
return telescope.load_extension("vim_bookmarks")