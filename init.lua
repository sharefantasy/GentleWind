-- init fennel, packer, aniseed

local execute = vim.api.nvim_command
local fn = vim.fn



local fmt = string.format

local function ensure(user, repo)
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/" .. repo
  if fn.empty(fn.glob(install_path)) > 0 then
    execute(fmt("!git clone https://github.com/%s/%s %s", user, repo, install_path))
    execute(fmt("packadd %s", repo))
  end
end

ensure("wbthomason", "packer.nvim")
ensure("Olical", "aniseed")

-- Enable Aniseed's automatic compilation and loading of Fennel source code.
vim.g["aniseed#env"] = {
  module = "gentlewind.init",
  compile = true
}
