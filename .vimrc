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

" ------- NOTE TAKING / VIM NOTES
vmap <silent><leader>ns :NoteFromSelectedText<CR>
nnoremap <silent><leader>ns :Note<CR>
nnoremap <silent><leader>nd :DeleteNote<CR>
nnoremap <silent><leader>nr :RecentNotes<CR>
nnoremap <silent><leader>nf :SearchNotes 

" ------- NOTE TAKING / VIMWIKI
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

" ------- NOTE TAKING / VIMWIKI / SYNTAX
" = Header1 =
" == Header2 ==
" === Header3 ===
" *bold* -- bold text
" _italic_ -- italic text
" [[wiki link]] -- wiki link
" [[wiki link|description]] -- wiki link with description
" <Leader>ww -- Open default wiki index file.
" <Leader>wt -- Open default wiki index file in a new tab.
" <Leader>ws -- Select and open wiki index file.
" <Leader>wd -- Delete wiki file you are in.
" <Leader>wr -- Rename wiki file you are in.
" <Enter> -- Follow/Create wiki link.
" <Shift-Enter> -- Split and follow/create wiki link.
" <Ctrl-Enter> -- Vertical split and follow/create wiki link.
" <Backspace> -- Go back to parent(previous) wiki link.
" <Tab> -- Find next wiki link.
" <Shift-Tab> -- Find previous wiki link.

" ------- NOTE TAKING / MARKDOWN-PREVIEW / CONFIG
nmap <silent><leader>ms <Plug>MarkdownPreview
nmap <silent><leader>mps <Plug>MarkdownPreviewStop
nmap <silent><leader>mpt <Plug>MarkdownPreviewToggle
" ##########################################################
" Examples of long alias within MARKDOWN-PREVIEW
" ##########################################################
" @startuml
" actor        "actor"       as actorVeryLOOOOOOOOOOOOOOOOOOOg
" agent        "agent"       as agentVeryLOOOOOOOOOOOOOOOOOOOg
" artifact     "artifact"    as artifactVeryLOOOOOOOOOOOOOOOOOOOg
" boundary     "boundary"    as boundaryVeryLOOOOOOOOOOOOOOOOOOOg
" card         "card"        as cardVeryLOOOOOOOOOOOOOOOOOOOg
" cloud        "cloud"       as cloudVeryLOOOOOOOOOOOOOOOOOOOg
" collections  "collections" as collectionsVeryLOOOOOOOOOOOOOOOOOOOg
" component    "component"   as componentVeryLOOOOOOOOOOOOOOOOOOOg
" control      "control"     as controlVeryLOOOOOOOOOOOOOOOOOOOg
" database     "database"    as databaseVeryLOOOOOOOOOOOOOOOOOOOg
" entity       "entity"      as entityVeryLOOOOOOOOOOOOOOOOOOOg
" file         "file"        as fileVeryLOOOOOOOOOOOOOOOOOOOg
" folder       "folder"      as folderVeryLOOOOOOOOOOOOOOOOOOOg
" frame        "frame"       as frameVeryLOOOOOOOOOOOOOOOOOOOg
" hexagon      "hexagon"     as hexagonVeryLOOOOOOOOOOOOOOOOOOOg
" interface    "interface"   as interfaceVeryLOOOOOOOOOOOOOOOOOOOg
" label        "label"       as labelVeryLOOOOOOOOOOOOOOOOOOOg
" node         "node"        as nodeVeryLOOOOOOOOOOOOOOOOOOOg
" package      "package"     as packageVeryLOOOOOOOOOOOOOOOOOOOg
" person       "person"      as personVeryLOOOOOOOOOOOOOOOOOOOg
" queue        "queue"       as queueVeryLOOOOOOOOOOOOOOOOOOOg
" stack        "stack"       as stackVeryLOOOOOOOOOOOOOOOOOOOg
" rectangle    "rectangle"   as rectangleVeryLOOOOOOOOOOOOOOOOOOOg
" storage      "storage"     as storageVeryLOOOOOOOOOOOOOOOOOOOg
" usecase      "usecase"     as usecaseVeryLOOOOOOOOOOOOOOOOOOOg
" @enduml
" ##########################################################
" set to 1, nvim will open the preview window after entering the markdown
" buffer default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" default: ''
let g:mkdp_browser = ''

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
" content_editable: if enable content editable for preview page, default:v:false
" disable_filename: if disable filename header for preview page, default: 0
let g:mkdp_preview_options = {
			\ 'mkit': {},
			\ 'katex': {},
			\ 'uml': {},
			\ 'maid': {},
			\ 'disable_sync_scroll': 0,
			\ 'sync_scroll_type': 'middle',
			\ 'hide_yaml_meta': 1,
			\ 'sequence_diagrams': {},
			\ 'flowchart_diagrams': {},
			\ 'content_editable': v:false,
			\ 'disable_filename': 0
			\ }

" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'

" recognized filetypes
" these filetypes will have MarkdownPreview... commands
let g:mkdp_filetypes = ['markdown']


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
nnoremap <silent>rev :Git revert<CR>
nnoremap <silent>diff :Git difftool<CR>
let g:gitlab_api_keys = {'gitlab.com': 'glpat-98pYrJDmUiVGxXkHjzrc'}

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
Plug 'tpope/vim-surround'
Plug 'xolox/vim-notes'
Plug 'xolox/vim-misc'
Plug 'vimwiki/vimwiki'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

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

" ------- GIT
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" ------- GIT CONNECT TO WEB
Plug 'ruanyl/vim-gh-line'
Plug 'shumphrey/fugitive-gitlab.vim'

" ------- COMMENT OUT LINES
Plug 'tpope/vim-commentary'

" ------- FINDING FILES
Plug 'junegunn/fzf', {'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()
