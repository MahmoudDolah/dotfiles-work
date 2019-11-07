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
Plug 'neomake/neomake'
Plug 'https://github.com/vim-syntastic/syntastic.git'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

Plug 'hashivim/vim-terraform'
Plug 'juliosueiras/vim-terraform-completion'
Plug 'fgsch/vim-varnish'

Plug 'airblade/vim-gitgutter'
Plug 'jreybert/vimagit'
Plug 'tpope/vim-commentary'
Plug 'Chiel92/vim-autoformat'

Plug 'wsdjeg/FlyGrep.vim'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'http://github.com/jeetsukumaran/vim-buffergator'

Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'flazz/vim-colorschemes'
Plug 'ayu-theme/ayu-vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'Rigellute/rigel'

Plug 'https://github.com/alok/notational-fzf-vim'
Plug 'https://github.com/martinda/Jenkinsfile-vim-syntax.git'

call plug#end()

" Set leader to ,
let mapleader = ","
set shiftwidth=4

" Toggle nerdtree with ctrl+n
nmap <C-n> :NERDTreeToggle<CR>
nmap <C-m> :NERDTreeFind<CR>
let NERDTreeQuitOnOpen=1
nnoremap <silent><Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent><Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <silent><Leader>> :exe "vertical resize " . (winwidth(0) * 3/2)<CR>
nnoremap <silent><Leader>< :exe "vertical resize " . (winwidth(0) * 2/3)<CR>

noremap <Leader>o :Gbrowse<CR>
let g:gitgutter_enabled=1

" Airline
let g:airline#extensions#tabline#enabled = 1

" Launch FZF on ',+f'
noremap <C-p> :FZF<CR>
noremap <C-f> :FlyGrep<CR>

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

" Syntastic Config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" (Optional)Remove Info(Preview) window
" set completeopt-=preview

" (Optional)Hide Info(Preview) window after completions
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" (Optional) Enable terraform plan to be include in filter
let g:syntastic_terraform_tffilter_plan = 1

" (Optional) Default: 0, enable(1)/disable(0) plugin's keymapping
let g:terraform_completion_keys = 1

" (Optional) Default: 1, enable(1)/disable(0) terraform module registry completion
let g:terraform_registry_module_completion = 0
