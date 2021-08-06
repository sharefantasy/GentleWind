local _2afile_2a = "/Users/fankainang/.config/nvim/fnl/dotfiles/utils.fnl"
local _0_
do
  local name_0_ = "dotfiles.utils"
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
    return {autoload("aniseed.string"), autoload("aniseed.core"), autoload("aniseed.nvim")}
  end
  ok_3f_0_, val_0_ = pcall(_2_)
  if ok_3f_0_ then
    _0_["aniseed/local-fns"] = {autoload = {as = "aniseed.string", core = "aniseed.core", nvim = "aniseed.nvim"}}
    return val_0_
  else
    return print(val_0_)
  end
end
local _local_0_ = _2_(...)
local as = _local_0_[1]
local core = _local_0_[2]
local nvim = _local_0_[3]
local _2amodule_2a = _0_
local _2amodule_name_2a = "dotfiles.utils"
do local _ = ({nil, _0_, nil, {{}, nil, nil, nil}})[2] end
local load_dir
do
  local v_0_
  do
    local v_0_0
    local function load_dir0(suffix)
      local ok_3f, lfs = pcall(require, "lfs")
      if ok_3f then
        for f in lfs.dir(as.join("/", {nvim.fn.stdpath("config"), "lua", "dotfiles", suffix})) do
          if (string.find(f, ".lua") or string.find(f, ".fnl")) then
            local modname = string.match(f, "(%a*).")
            local ok_3f0, val = pcall(require, as.join(".", {"dotfiles", suffix, modname}))
            if not ok_3f0 then
              print(("failed mappings: (file=" .. f .. ", error=" .. val .. ")"))
            end
          end
        end
        return nil
      else
        return print("lfs load failed: ", lfs)
      end
    end
    v_0_0 = load_dir0
    _0_["load-dir"] = v_0_0
    v_0_ = v_0_0
  end
  local t_0_ = (_0_)["aniseed/locals"]
  t_0_["load-dir"] = v_0_
  load_dir = v_0_
end
return nil