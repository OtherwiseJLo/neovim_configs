-- Required since packer is in 'opt' pack:
vim.cmd [[packadd packer.nvim]]


return require('packer').startup(function(use)
  -- Packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim', opt = true}

    use {'mattn/vim-lsp-settings', cmd = {'LspServerInstall'}}
  -- LSP Plugins
  use {
    'neovim/nvim-lspconfig',
    'mfussenegger/nvim-jdtls',
    'nvim-lua/completion-nvim',
    'norcalli/snippets.nvim',
    'nvim-lua/lsp-status.nvim',
  }
  use 'scalameta/nvim-metals'

  use {
    'RishabhRD/nvim-lsputils',
    requires = { 'RishabhRD/popfix' }
  }

  -- Treesitter Plugins
  use {
    'nvim-treesitter/nvim-treesitter',
    'nvim-treesitter/nvim-treesitter-textobjects',
    'nvim-treesitter/nvim-treesitter-refactor',
    'nvim-treesitter/nvim-tree-docs',
    'nvim-treesitter/playground',
    requires = {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  }

  use {
    'nvim-treesitter/completion-treesitter',
    requires = {
      'nvim-lua/completion-nvim',
      'nvim-treesitter/nvim-treesitter'
    }
  }

  -- Debug Adapter Protocol
  use {
    'theHamsta/nvim-dap-virtual-text',
    'mfussenegger/nvim-dap-python',
    'nvim-telescope/telescope-dap.nvim',
    requires = {'mfussenegger/nvim-dap'}
  }



  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }
  use {
    'nvim-telescope/telescope-project.nvim',
    'nvim-telescope/telescope-packer.nvim',
    requires = { 'nvim-telescope/telescope.nvim' }
  }

  use {
    'nvim-telescope/telescope-cheat.nvim'
  }

  -- Dadbod SQL plugins
  use {
    'kristijanhusak/vim-dadbod-ui',
    requires = {{'tpope/vim-dadbod'}, {'kristijanhusak/vim-dadbod-completion'}}
  }

  -- Async plugins
  use {
    'skywind3000/asynctasks.vim',
    requires = {'skywind3000/asyncrun.vim'}
  }

  use 'windwp/nvim-autopairs'
  use 'mhinz/vim-signify'
  -- use 'itchyny/lightline.vim'
  use 'sainnhe/sonokai'
  use 'romgrk/barbar.nvim'

  use {
    -- 'wellle/targets.vim',
    'tpope/vim-surround',
    'machakann/vim-sandwich',
    'tpope/vim-obsession',
    'simnalamburt/vim-mundo',
    'chrisbra/csv.vim',
    'SidOfc/mkdx',
    'vimwiki/vimwiki',
    'tpope/vim-fugitive',
    -- 'tpope/vim-endwise',
  }
  use {
    'theniceboy/nvim-deus',
  }

    use {'tjdevries/colorbuddy.nvim'}
    use {
    'rockerBOO/boo-colorscheme-nvim',
    'ishan9299/modus-theme-vim',
    'tjdevries/gruvbuddy.nvim',
    'Th3Whit3Wolf/spacebuddy',
    'Th3Whit3Wolf/onebuddy',
  }

  use {
      'lewis6991/gitsigns.nvim',
      'tjdevries/express_line.nvim',
      requires = { 'nvim-lua/plenary.nvim' }
  }


	use {'p00f/nvim-ts-rainbow'}
  use 'voldikss/vim-floaterm'
  use 'Yggdroot/indentLine'
  use {'aklt/plantuml-syntax', 'weirongxu/plantuml-previewer.vim'}
  use 'tyru/open-browser.vim'
  use { 'ms-jpq/chadtree', run = ':CHADdeps' }

  use 'kshenoy/vim-signature'
  use 'tjdevries/train.nvim'
  use 'mfussenegger/nvim-dap'
  use 'tpope/vim-commentary'

  use 'norcalli/nvim-colorizer.lua'

  use 'rhysd/git-messenger.vim'
  use 'rhysd/committia.vim'
  use 'lambdalisue/gina.vim'
  use 'fatih/vim-go'
  use 'vigoux/architext.nvim'

  use 'tami5/sql.nvim'
  use {
    'zenbro/mirror.vim',
    'neomake/neomake',
    'mhartington/formatter.nvim'
  }

  use {
    'glepnir/lspsaga.nvim',
    'liuchengxu/vista.vim',
    requires = 'neovim/nvim-lspconfig'
  }
  use 'kosayoda/nvim-lightbulb'
  use 'hkupty/iron.nvim'
  use 'tiagofumo/vim-nerdtree-syntax-highlight'
  use 'phaazon/hop.nvim'
  use 'gennaro-tedesco/nvim-peekup'
  use 'tjdevries/astronauta.nvim'

  use 'kevinhwang91/nvim-hlslens'
  use 'kevinhwang91/nvim-bqf'

  use {
  "nvim-telescope/telescope-frecency.nvim",
  config = function()
    require"telescope".load_extension("frecency")
  end
}

  use 'tjdevries/nlua.nvim'
  use 'tjdevries/manillua.nvim'
  use 'hashivim/vim-terraform'
  use 'nvim-lua/lsp_extensions.nvim'
  use 'sakhnik/nvim-gdb'

end)
