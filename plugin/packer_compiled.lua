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
local package_path_str = "/home/flower/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/flower/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/flower/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/flower/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/flower/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
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
  ["Comment.nvim"] = {
    after_files = { "/home/flower/.local/share/nvim/site/pack/packer/opt/Comment.nvim/after/plugin/Comment.lua" },
    config = { "\27LJ\2\nF\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\fcomment\27plugins.configs.others\frequire\0" },
    keys = { { "", "gc" }, { "", "gb" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/flower/.local/share/nvim/site/pack/packer/opt/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    after = { "cmp_luasnip" },
    config = { "\27LJ\2\nF\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\fluasnip\27plugins.configs.others\frequire\0" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = true,
    path = "/home/flower/.local/share/nvim/site/pack/packer/opt/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip",
    wants = { "friendly-snippets" }
  },
  ["TrueZen.nvim"] = {
    commands = { "TZAtaraxis", "TZMinimalist", "TZFocus" },
    config = { "\27LJ\2\n>\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0#custom.plugins.configs.truezen\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/flower/.local/share/nvim/site/pack/packer/opt/TrueZen.nvim",
    url = "https://github.com/Pocco81/TrueZen.nvim"
  },
  ["alpha-nvim"] = {
    config = { "\27LJ\2\n]\0\0\5\0\5\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\2B\0\2\1K\0\1\0\vconfig\23alpha.themes.theta\nsetup\nalpha\frequire\0" },
    loaded = true,
    path = "/home/flower/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  base46 = {
    after = { "nvim-web-devicons" },
    config = { "\27LJ\2\nK\0\0\4\0\4\0\t6\0\0\0006\2\1\0'\3\2\0B\0\3\3\15\0\0\0X\2\2?9\2\3\1B\2\1\1K\0\1\0\15load_theme\vbase46\frequire\npcall\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/flower/.local/share/nvim/site/pack/packer/opt/base46",
    url = "https://github.com/NvChad/base46"
  },
  ["better-escape.nvim"] = {
    config = { "\27LJ\2\nD\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0)custom.plugins.configs.better_escape\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/flower/.local/share/nvim/site/pack/packer/opt/better-escape.nvim",
    url = "https://github.com/max397574/better-escape.nvim"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\n:\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\31plugins.configs.bufferline\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/flower/.local/share/nvim/site/pack/packer/opt/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    after = { "cmp-path" },
    after_files = { "/home/flower/.local/share/nvim/site/pack/packer/opt/cmp-buffer/after/plugin/cmp_buffer.lua" },
    load_after = {
      ["cmp-nvim-lsp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/flower/.local/share/nvim/site/pack/packer/opt/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    after = { "cmp-buffer" },
    after_files = { "/home/flower/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp/after/plugin/cmp_nvim_lsp.lua" },
    load_after = {
      ["cmp-nvim-lua"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/flower/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    after = { "cmp-nvim-lsp" },
    after_files = { "/home/flower/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua/after/plugin/cmp_nvim_lua.lua" },
    load_after = {
      cmp_luasnip = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/flower/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    after_files = { "/home/flower/.local/share/nvim/site/pack/packer/opt/cmp-path/after/plugin/cmp_path.lua" },
    load_after = {
      ["cmp-buffer"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/flower/.local/share/nvim/site/pack/packer/opt/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    after = { "cmp-nvim-lua" },
    after_files = { "/home/flower/.local/share/nvim/site/pack/packer/opt/cmp_luasnip/after/plugin/cmp_luasnip.lua" },
    load_after = {
      LuaSnip = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/flower/.local/share/nvim/site/pack/packer/opt/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  extensions = {
    loaded = true,
    path = "/home/flower/.local/share/nvim/site/pack/packer/start/extensions",
    url = "https://github.com/NvChad/extensions"
  },
  ["friendly-snippets"] = {
    after = { "nvim-cmp" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/flower/.local/share/nvim/site/pack/packer/opt/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\nG\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\rgitsigns\27plugins.configs.others\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/flower/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/home/flower/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\nH\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14blankline\27plugins.configs.others\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/flower/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lsp_signature.nvim"] = {
    config = { "\27LJ\2\nH\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14signature\27plugins.configs.others\frequire\0" },
    load_after = {
      ["nvim-lspconfig"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/flower/.local/share/nvim/site/pack/packer/opt/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
  },
  ["mkdir.nvim"] = {
    loaded = true,
    path = "/home/flower/.local/share/nvim/site/pack/packer/start/mkdir.nvim",
    url = "https://github.com/jghauser/mkdir.nvim"
  },
  neorg = {
    config = { "\27LJ\2\n<\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0!custom.plugins.configs.neorg\frequire\0" },
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/flower/.local/share/nvim/site/pack/packer/opt/neorg",
    url = "https://github.com/nvim-neorg/neorg"
  },
  ["neoscroll.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14neoscroll\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/flower/.local/share/nvim/site/pack/packer/opt/neoscroll.nvim",
    url = "https://github.com/karb94/neoscroll.nvim"
  },
  ["null-ls.nvim"] = {
    config = { "\27LJ\2\nL\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup#custom.plugins.configs.null-ls\frequire\0" },
    load_after = {
      ["nvim-lspconfig"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/flower/.local/share/nvim/site/pack/packer/opt/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\nH\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14autopairs\27plugins.configs.others\frequire\0" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/flower/.local/share/nvim/site/pack/packer/opt/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    after = { "LuaSnip", "nvim-autopairs" },
    config = { "\27LJ\2\n:\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\31custom.plugins.configs.cmp\frequire\0" },
    load_after = {
      ["friendly-snippets"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/flower/.local/share/nvim/site/pack/packer/opt/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\nH\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14colorizer\27plugins.configs.others\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/flower/.local/share/nvim/site/pack/packer/opt/nvim-colorizer.lua",
    url = "https://github.com/NvChad/nvim-colorizer.lua"
  },
  ["nvim-gps"] = {
    config = { "\27LJ\2\n3\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\24plugins.configs.gps\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/flower/.local/share/nvim/site/pack/packer/opt/nvim-gps",
    url = "https://github.com/SmiteshP/nvim-gps"
  },
  ["nvim-lsp-installer"] = {
    after = { "nvim-lspconfig" },
    loaded = false,
    needs_bufread = true,
    path = "/home/flower/.local/share/nvim/site/pack/packer/opt/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    after = { "null-ls.nvim", "lsp_signature.nvim" },
    config = { "\27LJ\2\nc\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0016\0\0\0'\2\2\0B\0\2\1K\0\1\0\30plugins.configs.lspconfig\"plugins.configs.lsp_installer\frequire\0" },
    load_after = {
      ["nvim-lsp-installer"] = true
    },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/flower/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    commands = { "NvimTreeToggle", "NvimTreeFocus" },
    config = { "\27LJ\2\n8\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\29plugins.configs.nvimtree\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/flower/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    after = { "neorg" },
    config = { "\27LJ\2\n:\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\31plugins.configs.treesitter\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/flower/.local/share/nvim/site/pack/packer/opt/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    after = { "bufferline.nvim" },
    config = { "\27LJ\2\n5\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\26plugins.configs.icons\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/flower/.local/share/nvim/site/pack/packer/opt/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  nvterm = {
    config = { "\27LJ\2\n6\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\27plugins.configs.nvterm\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/flower/.local/share/nvim/site/pack/packer/opt/nvterm",
    url = "https://github.com/NvChad/nvterm"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/flower/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/flower/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    commands = { "Telescope" },
    config = { "\27LJ\2\n9\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\30plugins.configs.telescope\frequire\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/flower/.local/share/nvim/site/pack/packer/opt/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  vimtex = {
    config = { "\27LJ\2\n=\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\"custom.plugins.configs.vimtex\frequire\0" },
    loaded = false,
    needs_bufread = true,
    path = "/home/flower/.local/share/nvim/site/pack/packer/opt/vimtex",
    url = "https://github.com/lervag/vimtex"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n8\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\29plugins.configs.whichkey\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/flower/.local/share/nvim/site/pack/packer/opt/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
local module_lazy_loads = {
  ["^Comment"] = "Comment.nvim",
  ["^cmp_nvim_lsp"] = "friendly-snippets",
  ["^lspconfig"] = "nvim-lspconfig",
  ["^nvterm"] = "nvterm"
}
local lazy_load_called = {['packer.load'] = true}
local function lazy_load_module(module_name)
  local to_load = {}
  if lazy_load_called[module_name] then return nil end
  lazy_load_called[module_name] = true
  for module_pat, plugin_name in pairs(module_lazy_loads) do
    if not _G.packer_plugins[plugin_name].loaded and string.match(module_name, module_pat) then
      to_load[#to_load + 1] = plugin_name
    end
  end

  if #to_load > 0 then
    require('packer.load')(to_load, {module = module_name}, _G.packer_plugins)
    local loaded_mod = package.loaded[module_name]
    if loaded_mod then
      return function(modname) return loaded_mod end
    end
  end
end

if not vim.g.packer_custom_loader_enabled then
  table.insert(package.loaders, 1, lazy_load_module)
  vim.g.packer_custom_loader_enabled = true
end

-- Setup for: which-key.nvim
time([[Setup for which-key.nvim]], true)
try_loadstring("\27LJ\2\nV\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\19which-key.nvim\21packer_lazy_load\15core.utils\frequire\0", "setup", "which-key.nvim")
time([[Setup for which-key.nvim]], false)
-- Setup for: nvim-lsp-installer
time([[Setup for nvim-lsp-installer]], true)
try_loadstring("\27LJ\2\nU\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0006if &ft == \"packer\" | echo \"\" | else | silent! e %\bcmd\bvim|\1\0\4\0\a\0\f6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\0016\0\4\0009\0\5\0003\2\6\0)\3\0\0B\0\3\1K\0\1\0\0\rdefer_fn\bvim\23nvim-lsp-installer\21packer_lazy_load\15core.utils\frequire\0", "setup", "nvim-lsp-installer")
time([[Setup for nvim-lsp-installer]], false)
-- Setup for: vimtex
time([[Setup for vimtex]], true)
try_loadstring("\27LJ\2\nN\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\vvimtex\21packer_lazy_load\15core.utils\frequire~\1\0\5\0\t\0\v6\0\0\0009\0\1\0009\0\2\0'\2\3\0005\3\5\0005\4\4\0=\4\6\0033\4\a\0=\4\b\3B\0\3\1K\0\1\0\rcallback\0\fpattern\1\0\0\1\3\0\0\btex\rplaintex\rFileType\24nvim_create_autocmd\bapi\bvim\0", "setup", "vimtex")
time([[Setup for vimtex]], false)
-- Setup for: neoscroll.nvim
time([[Setup for neoscroll.nvim]], true)
try_loadstring("\27LJ\2\nV\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\19neoscroll.nvim\21packer_lazy_load\15core.utils\frequire\0", "setup", "neoscroll.nvim")
time([[Setup for neoscroll.nvim]], false)
time([[packadd for neoscroll.nvim]], true)
vim.cmd [[packadd neoscroll.nvim]]
time([[packadd for neoscroll.nvim]], false)
-- Setup for: gitsigns.nvim
time([[Setup for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\nU\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\18gitsigns.nvim\21packer_lazy_load\15core.utils\frequire\0", "setup", "gitsigns.nvim")
time([[Setup for gitsigns.nvim]], false)
-- Setup for: null-ls.nvim
time([[Setup for null-ls.nvim]], true)
try_loadstring("\27LJ\2\nT\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\17null-ls.nvim\21packer_lazy_load\15core.utils\frequire\0", "setup", "null-ls.nvim")
time([[Setup for null-ls.nvim]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\2\n]\0\0\5\0\5\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\2B\0\2\1K\0\1\0\vconfig\23alpha.themes.theta\nsetup\nalpha\frequire\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)
-- Config for: neoscroll.nvim
time([[Config for neoscroll.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14neoscroll\frequire\0", "config", "neoscroll.nvim")
time([[Config for neoscroll.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd plenary.nvim ]]
vim.cmd [[ packadd base46 ]]

-- Config for: base46
try_loadstring("\27LJ\2\nK\0\0\4\0\4\0\t6\0\0\0006\2\1\0'\3\2\0B\0\3\3\15\0\0\0X\2\2?9\2\3\1B\2\1\1K\0\1\0\15load_theme\vbase46\frequire\npcall\0", "config", "base46")

vim.cmd [[ packadd nvim-web-devicons ]]

-- Config for: nvim-web-devicons
try_loadstring("\27LJ\2\n5\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\26plugins.configs.icons\frequire\0", "config", "nvim-web-devicons")

vim.cmd [[ packadd bufferline.nvim ]]

-- Config for: bufferline.nvim
try_loadstring("\27LJ\2\n:\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\31plugins.configs.bufferline\frequire\0", "config", "bufferline.nvim")

time([[Sequenced loading]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TZAtaraxis lua require("packer.load")({'TrueZen.nvim'}, { cmd = "TZAtaraxis", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TZMinimalist lua require("packer.load")({'TrueZen.nvim'}, { cmd = "TZMinimalist", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Telescope lua require("packer.load")({'telescope.nvim'}, { cmd = "Telescope", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeToggle lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeFocus lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeFocus", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TZFocus lua require("packer.load")({'TrueZen.nvim'}, { cmd = "TZFocus", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

-- Keymap lazy-loads
time([[Defining lazy-load keymaps]], true)
vim.cmd [[noremap <silent> gc <cmd>lua require("packer.load")({'Comment.nvim'}, { keys = "gc", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> gb <cmd>lua require("packer.load")({'Comment.nvim'}, { keys = "gb", prefix = "" }, _G.packer_plugins)<cr>]]
time([[Defining lazy-load keymaps]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType norg ++once lua require("packer.load")({'neorg'}, { ft = "norg" }, _G.packer_plugins)]]
vim.cmd [[au FileType alpha ++once lua require("packer.load")({'nvim-tree.lua'}, { ft = "alpha" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au InsertCharPre * ++once lua require("packer.load")({'better-escape.nvim'}, { event = "InsertCharPre *" }, _G.packer_plugins)]]
vim.cmd [[au BufRead * ++once lua require("packer.load")({'indent-blankline.nvim', 'nvim-treesitter', 'nvim-colorizer.lua'}, { event = "BufRead *" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'friendly-snippets'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
vim.cmd [[au CursorMoved * ++once lua require("packer.load")({'nvim-gps'}, { event = "CursorMoved *" }, _G.packer_plugins)]]
vim.cmd [[au BufNewFile * ++once lua require("packer.load")({'nvim-treesitter'}, { event = "BufNewFile *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /home/flower/.local/share/nvim/site/pack/packer/opt/neorg/ftdetect/norg.vim]], true)
vim.cmd [[source /home/flower/.local/share/nvim/site/pack/packer/opt/neorg/ftdetect/norg.vim]]
time([[Sourcing ftdetect script at: /home/flower/.local/share/nvim/site/pack/packer/opt/neorg/ftdetect/norg.vim]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
