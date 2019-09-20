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

Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'

Plug 'wsdjeg/FlyGrep.vim'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'ayu-theme/ayu-vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'NLKNguyen/papercolor-theme'

Plug 'https://github.com/alok/notational-fzf-vim'
Plug 'https://github.com/martinda/Jenkinsfile-vim-syntax.git'

call plug#end()

" Set leader to ,
let mapleader = ","

" Set leader to comma
let mapleader = ","

" Toggle nerdtree with ctrl+n
nmap <C-n> :NERDTreeToggle<CR>

" Airline
let g:airline#extensions#tabline#enabled = 1

" Launch FZF on ',+f'
noremap <Leader>f :FZF<CR>

" Clipboard
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p

" Buffer
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>

" Notational Velocity Vim FZF Plugin
noremap <Leader>l :NV<CR>
let g:nv_search_paths = ['~/Documents/notes', '~/Documents/logbook']
let g:nv_default_extension = '.md'
let g:nv_create_note_key = 'ctrl-f'

" Theme
if (has("termguicolors"))
 set termguicolors
endif

" let ayucolor="dark"   " for dark version of theme
" colorscheme ayu
set background=dark
colorscheme PaperColor
