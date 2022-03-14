syntax on
filetype plugin on

" #######################################
" -- SET CONFIGURATIONS
" #######################################

set encoding=utf-8
set nocompatible
set noerrorbells
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smartindent
set nu
set relativenumber
set hlsearch
set wrap
set noswapfile
set ignorecase
set smartcase
set wildmenu
set autoindent

" ------- COLORS
" set background=dark

" #######################################
" -- CUSTOM PLUGIN SETTINGS
" #######################################

" ------- COC
set hidden
set nobackup
set nowritebackup
set cmdheight=3
set updatetime=300
set shortmess+=c

" ------- COLOR SCHEMES
" bog
" busierbee
" busybee
" colorful
" fine_blue
" fruit
" fruity
" gentooish
" gobo
" herald
" ingretu
" inkpot
" ir_black
" jelleybeans
" jellyx
" kruby
" lettuce
" liquidcarbon
" lucius
" moria
" mustang
" nazca
" nicotine
" obsidian
" oceanlight
" phd
" proton
" pyte
" python
" rainbow_fine_blue
" rainbow_fruit
" shobogenzo
" simpleandfriendly
" softbluev2
" softlight
" southwest-fog
" summerfruit
" symfony
" synic
" taqua
" twilight
" underwater
" vividchalk
" vylight
" wombat
" wombat256
" xoria256
" zenburn
" zenesque
colorscheme darkblue

" #######################################
" -- CUSTOM KEY BINDINGS
" #######################################

" ------- LEADER KEYS
inoremap jj <Esc>
let mapleader=" "

" ------- CUSTOM
nnoremap <silent>term :terminal<CR>

" ------- WINDOWS
nnoremap <silent><C-L> :vertical resize +5<CR>
nnoremap <silent><C-H> :vertical resize -5<CR>
nnoremap <silent><C-K> :resize +5<CR>
nnoremap <silent><C-J> :resize -5<CR>
nnoremap <silent><leader>zi <C-W>_ \| <C-W>\|
nnoremap <silent><leader>zo <C-W>=

" + Imitate DWM windows but with CTRL
nnoremap <silent><S-L> <C-W><C-L>
nnoremap <silent><S-H> <C-W><C-H>
nnoremap <silent><S-J> <C-W><C-J>
nnoremap <silent><S-K> <C-W><C-K>

" + Split windows vertical/horizontal
nnoremap <silent>sp :sp<CR>
nnoremap <silent>vsp :vsp<CR>

" ------- TABS
nnoremap th :tabfirst<CR>
nnoremap tj :tabnext<CR>
nnoremap tk :tabprev<CR>
nnoremap tl :tablast<CR>
nnoremap tn :tabnew<CR>
nnoremap tF :tabm 0<CR>
nnoremap tL :tabm<CR>

" ------- BUFFERS
nnoremap <silent>bj :bn<CR>
nnoremap <silent>bk :bp<CR>
" Delete buffer
nnoremap <silent>bd :bd<CR>

" ------- COMMENTARY
xmap ;; <Plug>Commentary
nmap ;; <Plug>Commentary
omap ;; <Plug>Commentary
nmap ;; <Plug>CommentaryLine

" ------- FZF
nnoremap <silent><leader>fls :Files<CR>
nnoremap <silent><leader>fla :Ag<CR>
nnoremap <silent><leader>fb :Buffers<CR>
nnoremap <silent><leader>col :Colors<CR>
nnoremap <silent><leader>fbl :Lines<CR>
nnoremap <silent><leader>fli :BLines<CR>
nnoremap <silent><leader>gla :Commits<CR>
nnoremap <silent><leader>gli :BCommits<CR>
nnoremap <silent>maps :Maps<CR>
nnoremap <silent>cmd :Commands<CR>

" ------- GIT
nnoremap <silent><leader>gls :GV<CR>

" ------- GIT GUTTER
nnoremap <silent>glt :GitGutterToggle<CR>
nnoremap <silent>glj :GitGutterSignsToggle<CR>
nnoremap <silent>glh :GitGutterLineHighlightsToggle<CR>

" ------- GIT CONNECT TO GITHUB/GITLAB
" <leader>gh --> Default key mapping for blob view
" <leader>gb --> Default key mapping for blame view
" <leader>go --> Default key mapping for repo view

" ------- SYNTASTIC
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" ------- NERDTREE
nnoremap <silent><leader>pt :NERDTreeToggle<CR>
nnoremap <silent><leader>pv :NERDTreeFind<CR>
let NERDTreeShowHidden=1

" ------- YouCompleteMe
nnoremap <leader>jt :YcmCompleter GoTo<CR>
nnoremap <leader>j' :YcmCompleter FixIt<CR>
nnoremap <leader>jd :YcmCompleter GetDoc<CR>
nnoremap <leader>jt :YcmCompleter GetType<CR>
nnoremap <leader>jp :YcmCompleter GetParent<CR>
nnoremap <leader>jti :YcmCompleter GoToInclude<CR>
nnoremap <leader>jen :YcmCompleter GoToDefinition<CR>
nnoremap <leader>jan :YcmCompleter GoToDeclaration<CR>

" #######################################
" -- PLUGINS
" #######################################

call plug#begin()
Plug 'preservim/NERDTree'
Plug 'scrooloose/nerdtree'

" ------- VIM ORG-MODE
Plug 'jceb/vim-orgmode'
Plug 'tpope/vim-speeddating'

" ------- COLORS/THEMES
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'

" ------- AUTO COMPLETE
" Info : Run python3 install.py --all in directory
" --> Install dependies along the way
Plug 'valloric/youcompleteme'
Plug 'scrooloose/syntastic'

" ------- GIT RELATED
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'ruanyl/vim-gh-line'

" ------- COMMENTS
Plug 'tpope/vim-commentary'

" ------- FINDING FILES
Plug 'kien/ctrlp.vim'
Plug 'junegunn/fzf', {'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()
