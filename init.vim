" Load general vim settings
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/mappings.vim
source $HOME/.config/nvim/general/paths.vim

" Load plugins
lua require('packer_init')
lua require('plugins')

" Load plugin settings
lua require('configs/lsp/setup')
lua require('configs/treesitter/setup')
lua require('configs/telescope/setup')
lua require('configs/formatter/setup')
lua require('snippets/init')
lua require('nvim-autopairs').setup()
lua require('snippets').use_suggested_mappings()
lua require('lspsaga').init_lsp_saga()
"lua require('configs/lsp/metals')

source $HOME/.config/nvim/telescope/mappings.vim
source $HOME/.config/nvim/status/barbar.vim
source $HOME/.config/nvim/tabline/barbar.vim
source $HOME/.config/nvim/file_manager/chadtree.vim
source $HOME/.config/nvim/vimwiki/vimwiki.vim
source $HOME/.config/nvim/quickscope/quickscope.vim
source $HOME/.config/nvim/chadtree/chadtree.vim
source $HOME/.config/nvim/completion/completion.vim
source $HOME/.config/nvim/jdtls/jdtls.vim
source $HOME/.config/nvim/metals/metals.vim
source $HOME/.config/nvim/lexima/lexima.vim
source $HOME/.config/nvim/async/async.vim
source $HOME/.config/nvim/signify/signify.vim
source /home/jlopez/.config/nvim/color/sonokai.vim

" lua require('colorbuddy').colorscheme('gruvbuddy')
lua require('colorizer').setup()
" lua require('colorbuddy').colorscheme('solarized_dark_high_contrast')

au ColorScheme * hi Normal ctermbg=None

let g:floaterm_keymap_toggle = '<F1>'

set laststatus=2
lua require('statusline')

set undofile
set undodir=~/.local/share/nvim/undo/

autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()
