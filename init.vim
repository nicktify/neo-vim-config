source ~/.config/nvim/vim/plug.vim
source ~/.config/nvim/lua/init.lua

if exists("&termguicolors") && exists("&winblend")
  syntax enable
  set termguicolors
  set winblend=100
  set wildoptions=pum
  set pumblend=5
  set background=dark
  "" Use NeoSolarized
  let g:neosolarized_termtrans=1
  runtime ./colors/NeoSolarized.vim
  colorscheme NeoSolarized
endif

set clipboard+=unnamedplus
