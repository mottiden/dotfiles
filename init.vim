" -----------------------------------------------------------------------------
" - Neovim Plugins: ~/.local/share/nvim/plugged
" -----------------------------------------------------------------------------
call plug#begin('~/.local/share/nvim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'BurningEther/iron.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'vim-python/python-syntax'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'davidhalter/jedi-vim'
Plug 'andviro/flake8-vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'elzr/vim-json'

call plug#end()


" -----------------------------------------------------------------------------
"  Main settings
" -----------------------------------------------------------------------------
let mapleader=";"    " Map the leader key to ;
set mouse=a          " allow mouse control
set fillchars=vert:\│ " solid utf-8 lines for splits
set showmatch        " Show matching brackets.
set number           " Show the line numbers on the left side.
set formatoptions+=o " Continue comment marker in new lines.
set expandtab        " Insert spaces when TAB is pressed.
set tabstop=4        " Render TABs using this many spaces.
set shiftwidth=4     " Indentation amount for < and > commands.
set nojoinspaces     " Prevents inserting two spaces after punctuation on a join 

" TODO map <C-B> to go backwards
" TODO map <C-F> to go forward


" -----------------------------------------------------------------------------
" Fuzzy file finder
" For commands look https://github.com/junegunn/fzf.vim
" -----------------------------------------------------------------------------


" -----------------------------------------------------------------------------
" NERDTree  
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
map <C-T> :NERDTreeToggle<CR>

" -----------------------------------------------------------------------------

" -----------------------------------------------------------------------------
" Windows splits
" -----------------------------------------------------------------------------
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" -----------------------------------------------------------------------------
" Base16 plugin
" To use together with https://github.com/chriskempson/base16-shell
" -----------------------------------------------------------------------------
let base16colorspace=256  " Access colors present in 256 colorspace
try
    colorscheme base16-ocean
    set background=dark
catch
endtry


" -----------------------------------------------------------------------------
" Relative Numbers
" -----------------------------------------------------------------------------
set relativenumber
set norelativenumber  " turn relative line numbers off
set relativenumber!   " toggle relative line numbers


" -----------------------------------------------------------------------------
" Airline
" Remember to use https://github.com/powerline/fonts
" -----------------------------------------------------------------------------
let g:airline_powerline_fonts = 1
let g:airline_theme='base16'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''


" -----------------------------------------------------------------------------
" Pep8
" -----------------------------------------------------------------------------
let g:PyFlakeOnWrite = 1 "checks on write
let g:PyFlakeDisabledMessages = 'E501' "disabling lines too long error
map <F6> :PyFlake <CR>
map <F7> :PyFlakeAuto <CR>


" -----------------------------------------------------------------------------
" Repl Python  
" -----------------------------------------------------------------------------
let g:python3_host_prog = '/home/jp/.virtualenvs/neovim/bin/python3.5'

" Escape from terminal
tnoremap <Esc> <C-\><C-n>

:command IPy IronRepl " Alternative command for IronRepl
let g:iron_map_defaults=0 " deactivate default mappings in IronRepl

" Key Mapping for iron.vim
nmap <M-r> <Plug>(iron-send-motion)
vmap <M-r> <Plug>(iron-send-motion)
nmap <M-t> <Plug>(iron-repeat-cmd)
vmap <M-t> <Plug>(iron-repeat-cmd)

" Python highlights
let g:python_highlight_all = 1


" -----------------------------------------------------------------------------
" Deoplete
" -----------------------------------------------------------------------------
let g:deoplete#enable_at_startup = 1 " Use Deoplete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
set completeopt-=preview
