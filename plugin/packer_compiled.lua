-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/fankainang/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/fankainang/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/fankainang/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/fankainang/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/fankainang/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ale = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/ale"
  },
  aniseed = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/aniseed"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/auto-pairs"
  },
  ["compe-conjure"] = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/compe-conjure"
  },
  conjure = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/conjure"
  },
  ["diffview.nvim"] = {
    config = { "\27LJ\2\n€\6\0\0\n\0(\0^6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0019\2\4\0005\4\5\0005\5\6\0=\5\a\0045\5\b\0005\6\n\0\18\a\1\0'\t\t\0B\a\2\2=\a\v\6\18\a\1\0'\t\f\0B\a\2\2=\a\r\6\18\a\1\0'\t\14\0B\a\2\2=\a\15\6\18\a\1\0'\t\16\0B\a\2\2=\a\17\6\18\a\1\0'\t\18\0B\a\2\2=\a\19\6\18\a\1\0'\t\20\0B\a\2\2=\a\21\6\18\a\1\0'\t\22\0B\a\2\2=\a\23\6\18\a\1\0'\t\24\0B\a\2\2=\a\25\6\18\a\1\0'\t\26\0B\a\2\2=\a\27\6\18\a\1\0'\t\28\0B\a\2\2=\a\29\6\18\a\1\0'\t\30\0B\a\2\2=\a\31\6\18\a\1\0'\t \0B\a\2\2=\a!\6\18\a\1\0'\t\22\0B\a\2\2=\a\"\6\18\a\1\0'\t \0B\a\2\2=\a#\6\18\a\1\0'\t\20\0B\a\2\2=\a$\6=\6\a\0055\6%\0\18\a\1\0'\t\24\0B\a\2\2=\a\25\6\18\a\1\0'\t\26\0B\a\2\2=\a\27\6\18\a\1\0'\t\28\0B\a\2\2=\a\29\6\18\a\1\0'\t\30\0B\a\2\2=\a\31\6=\6&\5=\5'\4D\2\2\0\17key_bindings\tview\1\0\0\6o\6k\6j\t<up>\15prev_entry\n<tab>\22select_next_entry\f<s-tab>\22select_prev_entry\14<leader>e\16focus_files\14<leader>b\17toggle_files\v<down>\15next_entry\t<cr>\17select_entry\6-\23toggle_stage_entry\6X\18restore_entry\6U\16unstage_all\6S\14stage_all\6R\1\0\0\18refresh_files\1\0\1\21disable_defaults\1\15file_panel\1\0\2\nwidth\3#\14use_icons\2\1\0\1\18diff_binaries\1\nsetup\22diffview_callback\20diffview.config\rdiffview\frequire\0" },
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/diffview.nvim"
  },
  firenvim = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/firenvim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["go.nvim"] = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/go.nvim"
  },
  ["incsearch.vim"] = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/incsearch.vim"
  },
  ["lsp-colors.nvim"] = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/lualine.nvim"
  },
  neogit = {
    config = { "\27LJ\2\ní\2\0\0\a\0\21\0\0296\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\5€6\2\3\0'\4\4\0\18\5\1\0D\2\3\0X\2\17€9\2\5\0015\4\6\0005\5\a\0=\5\b\0045\5\n\0005\6\t\0=\6\v\5=\5\f\0045\5\14\0005\6\r\0=\6\15\0055\6\16\0=\6\17\0055\6\18\0=\6\19\5=\5\20\4D\2\2\0K\0\1\0\nsigns\fsection\1\3\0\0\6>\6v\titem\1\3\0\0\6>\6v\thunk\1\0\0\1\3\0\0\5\5\rmappings\vstatus\1\0\0\1\0\1\6B\16BranchPopup\17integrations\1\0\1\rdiffview\2\1\0\3\18disable_signs\1!disable_context_highlighting\1 disable_commit_confirmation\1\nsetup\25load neogit failed: \nprint\vneogit\frequire\npcall\0" },
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/neogit"
  },
  neomake = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/neomake"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/null-ls.nvim"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-compe"] = {
    config = { "\27LJ\2\n«\3\0\0\6\0\r\0\0266\0\0\0006\2\1\0'\3\2\0B\0\3\3\15\0\0\0X\2\3€9\2\3\1'\3\5\0=\3\4\0026\0\0\0006\2\1\0'\3\6\0B\0\3\3\15\0\0\0X\2\6€9\2\a\0015\4\b\0005\5\t\0=\5\n\4D\2\2\0X\2\4€6\2\v\0'\4\f\0\18\5\1\0D\2\3\0K\0\1\0\23load compe error: \nprint\vsource\1\0\6\tpath\2\fconjure\2\vbuffer\2\nvsnip\2\rnvim_lsp\2\tcalc\2\1\0\v\19max_kind_width\3d\19max_abbr_width\3d\21incomplete_delay\3\3\18documentation\2\17autocomplete\2\venable\2\ndebug\1\18throttle_time\3P\19source_timeout\3È\1\14preselect\venable\15min_length\3\1\nsetup\ncompe\21menuone,noselect\16completeopt\6o\17aniseed.nvim\frequire\npcall\0" },
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/nvim-dap-ui"
  },
  ["nvim-dap-virtual-text"] = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/nvim-dap-virtual-text"
  },
  ["nvim-fzf"] = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/nvim-fzf"
  },
  ["nvim-lightbulb"] = {
    config = { "\27LJ\2\n‘\2\0\0\a\0\r\0\0226\0\0\0'\2\1\0B\0\2\3\15\0\0\0X\2\f€9\2\2\0015\4\5\0005\5\3\0004\6\0\0=\6\4\5=\5\6\0045\5\a\0=\5\b\0045\5\t\0=\5\n\4D\2\2\0X\2\4€6\2\v\0'\4\f\0\18\5\1\0D\2\3\0K\0\1\0\16load fail: \nprint\16status_text\1\0\3\ttext\tðŸ’¡\fenabled\2\21text_unavailable\5\tsign\1\0\2\fenabled\2\rpriority\3\n\nfloat\1\0\0\rwin_opts\1\0\2\ttext\tðŸ’¡\fenabled\2\21update_lightbulb\19nvim-lightbulb\frequire\0" },
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/nvim-lightbulb"
  },
  ["nvim-local-fennel"] = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/nvim-local-fennel"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\ne\0\0\3\0\5\0\0146\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0004\2\0\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\4\0009\0\3\0004\2\0\0D\0\2\0\fpyright\nsetup\ngopls\14lspconfig\frequire\0" },
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["orgmode.nvim"] = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/orgmode.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["ranger.vim"] = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/ranger.vim"
  },
  ["snippets.nvim"] = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/snippets.nvim"
  },
  ["sql.nvim"] = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/sql.nvim"
  },
  ["startuptime.vim"] = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/startuptime.vim"
  },
  ["suda.vim"] = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/suda.vim"
  },
  ["telescope-frecency.nvim"] = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/telescope-frecency.nvim"
  },
  ["telescope-hop.nvim"] = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/telescope-hop.nvim"
  },
  ["telescope-packer.nvim"] = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/telescope-packer.nvim"
  },
  ["telescope-project.nvim"] = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/telescope-project.nvim"
  },
  ["telescope-snippets.nvim"] = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/telescope-snippets.nvim"
  },
  ["telescope-vim-bookmarks.nvim"] = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/telescope-vim-bookmarks.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["trouble.nvim"] = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/trouble.nvim"
  },
  undotree = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/undotree"
  },
  ["vim-abolish"] = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/vim-abolish"
  },
  ["vim-argumentative"] = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/vim-argumentative"
  },
  ["vim-better-default"] = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/vim-better-default"
  },
  ["vim-bookmarks"] = {
    config = { "\27LJ\2\nu\0\0\4\0\5\0\f6\0\0\0006\2\1\0'\3\2\0B\0\3\3\15\0\0\0X\2\5€9\2\3\1)\3\1\0=\3\4\2+\2\0\0L\2\2\0K\0\1\0%bookmark_no_default_key_mappings\6g\17aniseed.nvim\frequire\npcall\0" },
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/vim-bookmarks"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-dadbod"] = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/vim-dadbod"
  },
  ["vim-dispatch"] = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/vim-dispatch"
  },
  ["vim-dispatch-neovim"] = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/vim-dispatch-neovim"
  },
  ["vim-eunuch"] = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/vim-eunuch"
  },
  ["vim-racket"] = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/vim-racket"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/vim-repeat"
  },
  ["vim-sexp"] = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/vim-sexp"
  },
  ["vim-sexp-mappings-for-regular-people"] = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/vim-sexp-mappings-for-regular-people"
  },
  ["vim-sleuth"] = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/vim-sleuth"
  },
  ["vim-sneak"] = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/vim-sneak"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-unimpaired"] = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/vim-unimpaired"
  },
  ["vim-vinegar"] = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/vim-vinegar"
  },
  ["which-key.nvim"] = {
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/which-key.nvim"
  },
  ["zephyr-nvim"] = {
    config = { "\27LJ\2\nk\0\0\4\0\a\0\f6\0\0\0006\2\1\0'\3\2\0B\0\3\3\15\0\0\0X\2\3€9\2\3\1'\3\5\0=\3\4\0026\0\1\0'\2\6\0D\0\2\0\vzephyr\tdark\15background\6o\17aniseed.nvim\frequire\npcall\0" },
    loaded = true,
    path = "/Users/fankainang/.local/share/nvim/site/pack/packer/start/zephyr-nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-compe
time([[Config for nvim-compe]], true)
try_loadstring("\27LJ\2\n«\3\0\0\6\0\r\0\0266\0\0\0006\2\1\0'\3\2\0B\0\3\3\15\0\0\0X\2\3€9\2\3\1'\3\5\0=\3\4\0026\0\0\0006\2\1\0'\3\6\0B\0\3\3\15\0\0\0X\2\6€9\2\a\0015\4\b\0005\5\t\0=\5\n\4D\2\2\0X\2\4€6\2\v\0'\4\f\0\18\5\1\0D\2\3\0K\0\1\0\23load compe error: \nprint\vsource\1\0\6\tpath\2\fconjure\2\vbuffer\2\nvsnip\2\rnvim_lsp\2\tcalc\2\1\0\v\19max_kind_width\3d\19max_abbr_width\3d\21incomplete_delay\3\3\18documentation\2\17autocomplete\2\venable\2\ndebug\1\18throttle_time\3P\19source_timeout\3È\1\14preselect\venable\15min_length\3\1\nsetup\ncompe\21menuone,noselect\16completeopt\6o\17aniseed.nvim\frequire\npcall\0", "config", "nvim-compe")
time([[Config for nvim-compe]], false)
-- Config for: vim-bookmarks
time([[Config for vim-bookmarks]], true)
try_loadstring("\27LJ\2\nu\0\0\4\0\5\0\f6\0\0\0006\2\1\0'\3\2\0B\0\3\3\15\0\0\0X\2\5€9\2\3\1)\3\1\0=\3\4\2+\2\0\0L\2\2\0K\0\1\0%bookmark_no_default_key_mappings\6g\17aniseed.nvim\frequire\npcall\0", "config", "vim-bookmarks")
time([[Config for vim-bookmarks]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\ne\0\0\3\0\5\0\0146\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0004\2\0\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\4\0009\0\3\0004\2\0\0D\0\2\0\fpyright\nsetup\ngopls\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: neogit
time([[Config for neogit]], true)
try_loadstring("\27LJ\2\ní\2\0\0\a\0\21\0\0296\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\5€6\2\3\0'\4\4\0\18\5\1\0D\2\3\0X\2\17€9\2\5\0015\4\6\0005\5\a\0=\5\b\0045\5\n\0005\6\t\0=\6\v\5=\5\f\0045\5\14\0005\6\r\0=\6\15\0055\6\16\0=\6\17\0055\6\18\0=\6\19\5=\5\20\4D\2\2\0K\0\1\0\nsigns\fsection\1\3\0\0\6>\6v\titem\1\3\0\0\6>\6v\thunk\1\0\0\1\3\0\0\5\5\rmappings\vstatus\1\0\0\1\0\1\6B\16BranchPopup\17integrations\1\0\1\rdiffview\2\1\0\3\18disable_signs\1!disable_context_highlighting\1 disable_commit_confirmation\1\nsetup\25load neogit failed: \nprint\vneogit\frequire\npcall\0", "config", "neogit")
time([[Config for neogit]], false)
-- Config for: zephyr-nvim
time([[Config for zephyr-nvim]], true)
try_loadstring("\27LJ\2\nk\0\0\4\0\a\0\f6\0\0\0006\2\1\0'\3\2\0B\0\3\3\15\0\0\0X\2\3€9\2\3\1'\3\5\0=\3\4\0026\0\1\0'\2\6\0D\0\2\0\vzephyr\tdark\15background\6o\17aniseed.nvim\frequire\npcall\0", "config", "zephyr-nvim")
time([[Config for zephyr-nvim]], false)
-- Config for: diffview.nvim
time([[Config for diffview.nvim]], true)
try_loadstring("\27LJ\2\n€\6\0\0\n\0(\0^6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0019\2\4\0005\4\5\0005\5\6\0=\5\a\0045\5\b\0005\6\n\0\18\a\1\0'\t\t\0B\a\2\2=\a\v\6\18\a\1\0'\t\f\0B\a\2\2=\a\r\6\18\a\1\0'\t\14\0B\a\2\2=\a\15\6\18\a\1\0'\t\16\0B\a\2\2=\a\17\6\18\a\1\0'\t\18\0B\a\2\2=\a\19\6\18\a\1\0'\t\20\0B\a\2\2=\a\21\6\18\a\1\0'\t\22\0B\a\2\2=\a\23\6\18\a\1\0'\t\24\0B\a\2\2=\a\25\6\18\a\1\0'\t\26\0B\a\2\2=\a\27\6\18\a\1\0'\t\28\0B\a\2\2=\a\29\6\18\a\1\0'\t\30\0B\a\2\2=\a\31\6\18\a\1\0'\t \0B\a\2\2=\a!\6\18\a\1\0'\t\22\0B\a\2\2=\a\"\6\18\a\1\0'\t \0B\a\2\2=\a#\6\18\a\1\0'\t\20\0B\a\2\2=\a$\6=\6\a\0055\6%\0\18\a\1\0'\t\24\0B\a\2\2=\a\25\6\18\a\1\0'\t\26\0B\a\2\2=\a\27\6\18\a\1\0'\t\28\0B\a\2\2=\a\29\6\18\a\1\0'\t\30\0B\a\2\2=\a\31\6=\6&\5=\5'\4D\2\2\0\17key_bindings\tview\1\0\0\6o\6k\6j\t<up>\15prev_entry\n<tab>\22select_next_entry\f<s-tab>\22select_prev_entry\14<leader>e\16focus_files\14<leader>b\17toggle_files\v<down>\15next_entry\t<cr>\17select_entry\6-\23toggle_stage_entry\6X\18restore_entry\6U\16unstage_all\6S\14stage_all\6R\1\0\0\18refresh_files\1\0\1\21disable_defaults\1\15file_panel\1\0\2\nwidth\3#\14use_icons\2\1\0\1\18diff_binaries\1\nsetup\22diffview_callback\20diffview.config\rdiffview\frequire\0", "config", "diffview.nvim")
time([[Config for diffview.nvim]], false)
-- Config for: nvim-lightbulb
time([[Config for nvim-lightbulb]], true)
try_loadstring("\27LJ\2\n‘\2\0\0\a\0\r\0\0226\0\0\0'\2\1\0B\0\2\3\15\0\0\0X\2\f€9\2\2\0015\4\5\0005\5\3\0004\6\0\0=\6\4\5=\5\6\0045\5\a\0=\5\b\0045\5\t\0=\5\n\4D\2\2\0X\2\4€6\2\v\0'\4\f\0\18\5\1\0D\2\3\0K\0\1\0\16load fail: \nprint\16status_text\1\0\3\ttext\tðŸ’¡\fenabled\2\21text_unavailable\5\tsign\1\0\2\fenabled\2\rpriority\3\n\nfloat\1\0\0\rwin_opts\1\0\2\ttext\tðŸ’¡\fenabled\2\21update_lightbulb\19nvim-lightbulb\frequire\0", "config", "nvim-lightbulb")
time([[Config for nvim-lightbulb]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
