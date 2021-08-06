local _2afile_2a = "/Users/fankainang/.config/nvim/fnl/dotfiles/plugin/diffview.fnl"
local _0_
do
  local name_0_ = "dotfiles.plugin.diffview"
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
    return {}
  end
  ok_3f_0_, val_0_ = pcall(_2_)
  if ok_3f_0_ then
    _0_["aniseed/local-fns"] = {}
    return val_0_
  else
    return print(val_0_)
  end
end
local _local_0_ = _2_(...)
local _2amodule_2a = _0_
local _2amodule_name_2a = "dotfiles.plugin.diffview"
do local _ = ({nil, _0_, nil, {{}, nil, nil, nil}})[2] end
local function _3_()
  local diffview = require("diffview")
  local cb = (require("diffview.config")).diffview_callback
  return diffview.setup({diff_binaries = false, file_panel = {use_icons = true, width = 35}, key_bindings = {disable_defaults = false, file_panel = {R = cb("refresh_files"), S = cb("stage_all"), U = cb("unstage_all"), X = cb("restore_entry"), ["-"] = cb("toggle_stage_entry"), ["<cr>"] = cb("select_entry"), ["<down>"] = cb("next_entry"), ["<leader>b"] = cb("toggle_files"), ["<leader>e"] = cb("focus_files"), ["<s-tab>"] = cb("select_prev_entry"), ["<tab>"] = cb("select_next_entry"), ["<up>"] = cb("prev_entry"), j = cb("next_entry"), k = cb("prev_entry"), o = cb("select_entry")}, view = {["<leader>b"] = cb("toggle_files"), ["<leader>e"] = cb("focus_files"), ["<s-tab>"] = cb("select_prev_entry"), ["<tab>"] = cb("select_next_entry")}}})
end
return {config = _3_}