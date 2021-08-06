local _2afile_2a = "/Users/fankainang/.config/nvim/fnl/dotfiles/plugin/compe.fnl"
local _0_
do
  local name_0_ = "dotfiles.plugin.compe"
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
local _2amodule_name_2a = "dotfiles.plugin.compe"
do local _ = ({nil, _0_, nil, {{}, nil, nil, nil}})[2] end
local function _3_()
  do
    local ok_3f, nvim = pcall(require, "aniseed.nvim")
    if ok_3f then
      nvim.o.completeopt = "menuone,noselect"
    end
  end
  local ok_3f, compe = pcall(require, "compe")
  if ok_3f then
    return compe.setup({autocomplete = true, debug = false, documentation = true, enable = true, incomplete_delay = 400, max_abbr_width = 100, max_kind_width = 100, min_length = 1, preselect = "enable", source = {buffer = true, calc = true, conjure = true, nvim_lsp = true, path = true, vsnip = true}, source_timeout = 200, throttle_time = 80})
  else
    return print("load compe error: ", compe)
  end
end
return {config = _3_}