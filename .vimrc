syntax on
filetype plugin on

" #######################################
" -- SET CONFIGURATIONS
" #######################################

set exrc
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
set background=dark

" #######################################
" -- CUSTOM PLUGIN SETTINGS
" #######################################

" ------- COC
set hidden
set nobackup
set nowritebackup
set updatetime=300
set cmdheight=2
set shortmess=at

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
colorscheme gruvbox

" #######################################
" -- CUSTOM KEY BINDINGS
" #######################################

" ------- LEADER KEYS
inoremap jj <Esc>
let mapleader=" "
nnoremap <silent><S-A> :q<CR>
nnoremap <silent><S-Q> :quitall<CR>

" ------- CUSTOM
nnoremap <silent>term :terminal<CR>

" ------- WINDOWS
nnoremap <silent><C-L> :vertical resize +5<CR>
nnoremap <silent><C-H> :vertical resize -5<CR>
nnoremap <silent><C-K> :resize +5<CR>
nnoremap <silent><C-J> :resize -5<CR>
nnoremap <silent><leader>zi <C-W>_ \| <C-W>\|<CR>
nnoremap <silent><leader>zo <C-W>=<CR>

" + Imitate DWM windows but with CTRL
nnoremap <silent><S-L> <C-W><C-L>
nnoremap <silent><S-H> <C-W><C-H>
nnoremap <silent><S-J> <C-W><C-J>
nnoremap <silent><S-K> <C-W><C-K>

" + Split windows vertical/horizontal
nnoremap <silent>sp :sp<CR>
nnoremap <silent>vsp :vsp<CR>

" ------- TABS
nnoremap <silent>th :tabfirst<CR>
nnoremap <silent>tj :tabnext<CR>
nnoremap <silent>tk :tabprev<CR>
nnoremap <silent>tl :tablast<CR>
nnoremap <silent>tn :tabnew<CR>
nnoremap <silent>tF :tabm 0<CR>
nnoremap <silent>tL :tabm<CR>

" ------- BUFFERS
nnoremap <silent>bj :bn<CR>
nnoremap <silent>bk :bp<CR>
" Delete buffer
nnoremap <silent>bd :bd<CR>

" ------- COMMENTARY
xmap <silent><leader>;; <Plug>Commentary
nmap <silent><leader>;; <Plug>Commentary
omap <silent><leader>;; <Plug>Commentary
nmap <silent><leader>;; <Plug>CommentaryLine

" ------- FZF
nnoremap <silent>fls :Files<CR>
nnoremap <silent>fla :Ag<CR>
nnoremap <silent>flb :Lines<CR>
nnoremap <silent>fli :BLines<CR>
nnoremap <silent>gla :Commits<CR>
nnoremap <silent>gli :BCommits<CR>
nnoremap <silent>maps :Maps<CR>
nnoremap <silent>cmds :Commands<CR>
nnoremap <silent><leader>lb :Buffers<CR>
nnoremap <silent><leader>col :Colors<CR>

" ------- GIT VIM FUGITIVE
nnoremap <silent><leader>sh :diffget //3<CR>
nnoremap <silent><leader>sl :diffget //2<CR>
nnoremap <silent><leader>gs :G<CR>
nnoremap <silent>cmit :Git commit<CR>
nnoremap <silent>psh :Git push<CR>
nnoremap <silent>add :Git add<CR>
nnoremap <silent>diff :Git difftool<CR>
let g:gitlab_api_keys = {'gitlab.com': ''}

" ------- GIT GUTTER
nnoremap <silent>glt :GitGutterToggle<CR>
nnoremap <silent>glj :GitGutterSignsToggle<CR>
nnoremap <silent>glh :GitGutterLineHighlightsToggle<CR>
let g:gitgutter_highlight_lines = 1

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
Plug 'dhruvasagar/vim-dotoo'

" ------- TERRAFORM
Plug 'hashivim/vim-terraform'
Plug 'vim-syntastic/syntastic'
Plug 'juliosueiras/vim-terraform-completion'

" ------- COLORS/THEMES
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'

" ------- AUTO COMPLETE
" Info : Run python3 install.py --all in directory
" --> Install dependies along the way
Plug 'valloric/youcompleteme'
" Plug 'scrooloose/syntastic'

" ------- GIT
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" ------- GIT CONNECT TO WEB
Plug 'ruanyl/vim-gh-line'
Plug 'shumphrey/fugitive-gitlab.vim'

" ------- COMMENT OUT LINES
Plug 'tpope/vim-commentary'

" ------- FINDING FILES
Plug 'kien/ctrlp.vim'
Plug 'junegunn/fzf', {'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()
