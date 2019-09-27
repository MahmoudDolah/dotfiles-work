" Minimal Vimrc
set so=999
imap jj <Esc>
set number
set relativenumber
set nohlsearch

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'davidhalter/jedi-vim'
Plug 'mdempsky/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'https://github.com/tpope/vim-rhubarb.git'

Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'

Plug 'wsdjeg/FlyGrep.vim'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'flazz/vim-colorschemes'
Plug 'ayu-theme/ayu-vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'NLKNguyen/papercolor-theme'

Plug 'https://github.com/alok/notational-fzf-vim'
Plug 'https://github.com/martinda/Jenkinsfile-vim-syntax.git'

call plug#end()

" Set leader to ,
let mapleader = ","

" Toggle nerdtree with ctrl+n
nmap <C-n> :NERDTreeToggle<CR>
noremap <Leader>o :Gbrowse<CR>
let g:gitgutter_enabled=1

" Airline
let g:airline#extensions#tabline#enabled = 1

" Launch FZF on ',+f'
noremap <Leader>f :FZF<CR>

noremap <Leader>g :FlyGrep<CR>

" Clipboard
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p

" Buffer
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>

" Remap up and down arrow keys to ctrl+j and ctrl+k
" mostly useful for autocompletion options
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"

" Notational Velocity Vim FZF Plugin
noremap <Leader>l :NV<CR>
let g:nv_search_paths = ['~/Documents/notes', '~/Documents/logbook']
let g:nv_default_extension = '.md'
let g:nv_create_note_key = 'ctrl-f'

" Theme
if (has("termguicolors"))
 set termguicolors
endif

let ayucolor="dark"   " for dark version of theme
colorscheme ayu
" set background=dark
" colorscheme PaperColor
