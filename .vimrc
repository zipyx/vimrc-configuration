" ############################################################################
" ############################################################################
" ############################################################################
" ############################################################################
" VIM AND NEOVIM (NATIVE)
" ############################################################################
" ############################################################################
" ############################################################################
" ############################################################################
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
if has ('nvim')
	" colorscheme gruvbox
else 
	colorscheme gruvbox
endif
" #######################################
" -- CUSTOM KEY BINDINGS
" #######################################

" ------- LEADER KEYS
let mapleader=" "
inoremap jj <Esc>
nnoremap <silent><leader>q :q<CR>
nnoremap <silent><S-Q> :quitall<CR>

" ------- CUSTOM
nnoremap <silent>term :terminal<CR>
nnoremap <silent>vterm :vsp terminal<CR>

" ------- AUTOCMD
" auto VimEnter * NERDTreeToggle

" ------- TAGBAR
let g:tagbar_ctags_bin = "/usr/bin/ctags"
nmap t;t :TagbarToggle<CR>

" ------- WINDOWS / ZOOM
nnoremap <silent><C-L> :vertical resize +5<CR>
nnoremap <silent><C-H> :vertical resize -5<CR>
nnoremap <silent><C-K> :resize +5<CR>
nnoremap <silent><C-J> :resize -5<CR>
nnoremap <silent>zi <C-W>_ \| <C-W>\|<CR>
nnoremap <silent>zo <C-W>=<CR>

" + Imitate DWM windows but with CTRL
nnoremap <silent><S-L> <C-W><C-L>
nnoremap <silent><S-H> <C-W><C-H>
nnoremap <silent><S-J> <C-W><C-J>
nnoremap <silent><S-K> <C-W><C-K>

" + Exit Terminal mode
tnoremap <silent>t;w <C-\><C-n>
nnoremap <silent>t;w <C-W><C-W>

" ------- FLOATERM
nnoremap <silent>f;n :FloatermNew<CR>
tnoremap <silent>f;n <C-\><C-n>:FloatermNew<CR>
nnoremap <silent>f;j :FloatermPrev<CR>
tnoremap <silent>f;j <C-\><C-n>:FloatermPrev<CR>
nnoremap <silent>f;k :FloatermNext<CR>
tnoremap <silent>f;k <C-\><C-n>:FloatermNext<CR>
nnoremap <silent>f;a :FloatermToggle<CR>
vnoremap <silent>f;a :FloatermToggle<CR>
tnoremap <silent>f;a <C-\><C-n>:FloatermToggle<CR>
nnoremap <silent>f;b :%FloatermSend --name=%<CR>
tnoremap <silent>f;b <C-\><C-n>:%FloatermSend<CR>
nnoremap <silent>f;d :FloatermKill<CR>
tnoremap <silent>f;d <C-\><C-n>:FloatermKill<CR>
nnoremap <silent>f;h :FloatermHide<CR>
tnoremap <silent>f;h <C-\><C-n>:FloatermHide<CR>
nnoremap <silent>f;s :FloatermShow<CR>
tnoremap <silent>f;s <C-\><C-n>:FloatermShow<CR>
nnoremap <silent>f;u :FloatermUpdate<CR>
tnoremap <silent>f;u <C-\><C-n>:FloatermUpdate<CR>

" + Compile Languages
if has ('nvim')
	nnoremap <silent>f;v :FloatermNew --width=0.7 --height=0.8 --wintype=float --name=gocompiler --autoclose=0 nvim<CR>
	nnoremap <silent>f;e :FloatermNew --width=0.7 --height=0.8 --wintype=float --name=gocompiler --autoclose=0 nvim ~/.config/nvim/init.vim<CR>
	tnoremap <silent>f;e :FloatermNew --width=0.7 --height=0.8 --wintype=float --name=gocompiler --autoclose=0 nvim ~/.config/nvim/init.vim<CR>
else
	nnoremap <silent>f;v :FloatermNew --width=0.7 --height=0.8 --wintype=float --name=gocompiler --autoclose=0 vim<CR>
	nnoremap <silent>f;e :FloatermNew --width=0.7 --height=0.8 --wintype=float --name=gocompiler --autoclose=0 vim ~/.vimrc<CR>
	tnoremap <silent>f;e :FloatermNew --width=0.7 --height=0.8 --wintype=float --name=gocompiler --autoclose=0 vim ~/.vimrc<CR>
endif

nnoremap <silent>f;t :FloatermNew --width=0.6 --height=0.6 --wintype=float --name=gocompiler --autoclose=0 go test<CR>
nnoremap <silent>f;g :FloatermNew --width=0.6 --height=0.6 --wintype=float --name=gocompiler --autoclose=0 go run %<CR>
nnoremap <silent>f;ga :FloatermNew --width=0.6 --height=0.6 --wintype=float --name=gocompiler --autoclose=0 go run .<CR>
nnoremap <silent>f;gi :FloatermNew --width=0.6 --height=0.6 --wintype=float --name=gocompiler --autoclose=0 go run %
nnoremap <silent>f;gb :FloatermNew --width=0.6 --height=0.6 --wintype=float --name=gocompiler --autoclose=0 go build %<CR>
nnoremap <silent>f;cp :FloatermNew --width=0.6 --height=0.6 --wintype=float --name=cppcompiler --autoclose=0 gcc % -o %< && ./%<CR>

" default = 0.6
let g:floaterm_width = 0.7
" default = 0.6
let g:floaterm_height = 0.8

" ------- MOVE LINES
nnoremap <C-u> :m .-2<CR>==
nnoremap <C-d> :m .+1<CR>==
vnoremap <C-d> :m '>+1<CR>gv=gv
vnoremap <C-u> :m '<-2<CR>gv=gv

" ------- SPLIT WINDOWS (SPLIT|VSPLIT)
nnoremap <silent>sp :sp<CR>
nnoremap <silent>vsp :vsp<CR>

" ------- TABS
nnoremap <silent>th :tabfirst<CR>
nnoremap <silent>tD :tabclose<CR>
nnoremap <silent>tj :tabnext<CR>
nnoremap <silent>tk :tabprev<CR>
nnoremap <silent>tl :tablast<CR>
nnoremap <silent>tn :tabnew<CR>
nnoremap <silent>tF :tabm 0<CR>
nnoremap <silent>tL :tabm<CR>
tnoremap <silent>tj <C-W><C-W>tj<CR>
tnoremap <silent>tk <C-W><C-W>tk<CR>

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

" ------- NOTE TAKING / VIM NOTES / SCRATCH
nnoremap <silent>s;n :Scratch<CR>
nnoremap <silent>s;i :ScratchInsert<CR>
nnoremap <silent>s;a :ScratchPreview<CR>
nnoremap <silent>s;s :ScratchSelection<CR>

" ------- FILES / CLIPBOARD
" copies filepath to clipboard by pressing yf
:nnoremap <silent> yf :let @+=expand('%:p')<CR>

" " copies pwd to clipboard: command yd
:nnoremap <silent> yd :let @+=expand('%:p:h')<CR>" Vim jump to the last
" position when reopening a file
"
if has("autocmd")
	au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
				\| exe "normal! g'\"" | endif
endif

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
nnoremap <silent>map :Maps<CR>
nnoremap <silent>cmd :Commands<CR>
nnoremap <silent><leader>lb :Buffers<CR>
nnoremap <silent><leader>col :Colors<CR>

" ------- FZF GIT 
nmap <Leader>g [fzf-p]
xmap <Leader>g [fzf-p]
nnoremap <silent> [fzf-p]p     :<C-u>FzfPreviewFromResourcesRpc project_mru git<CR>
" nnoremap <silent> [fzf-p]gs    :<C-u>FzfPreviewGitStatusRpc<CR>
" nnoremap <silent> [fzf-p]ga    :<C-u>FzfPreviewGitActionsRpc<CR>
nnoremap <silent> [fzf-p]t     :<C-u>FzfPreviewBufferTagsRpc<CR>
nnoremap <silent> [fzf-p]q     :<C-u>FzfPreviewQuickFixRpc<CR>

" ------- REGISTERS PEEK
let g:peekup_open = 'flr'
let g:peekup_paste_before = '<leader>P'
let g:peekup_paste_after = '<leader>p'

" ------- GIT VIM FUGITIVE
nnoremap <silent><leader>sh :diffget //3<CR>
nnoremap <silent><leader>sl :diffget //2<CR>
nnoremap <silent>g;s :G<CR>
nnoremap <silent>g;c :Git commit<CR>
nnoremap <silent>g;p :Git push<CR>
nnoremap <silent>g;b :FzfPreviewGitBranchesRpc<CR>
nnoremap <silent>g;S :<C-u>FzfPreviewGitStatusRpc<CR>
nnoremap <silent>g;a :<C-u>FzfPreviewGitActionsRpc<CR>
" nnoremap <silent>g;d :Git difftool<CR>

" ------- GIT GUTTER
nnoremap <silent>glt :GitGutterToggle<CR>
nnoremap <silent>glj :GitGutterSignsToggle<CR>
nnoremap <silent>glh :GitGutterLineHighlightsToggle<CR>
" let g:gitgutter_highlight_lines = 1

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

" ------- NERDTREE / NVIMTREE
nnoremap <silent><leader>pt :NERDTreeToggle<CR>
nnoremap <silent><leader>pv :NERDTreeFind<CR>
let NERDTreeShowHidden=1

" ------- YOUCOMPLETEME
" nnoremap <silent><leader>jt :YcmCompleter GoTo<CR>
" nnoremap <silent><leader>j' :YcmCompleter FixIt<CR>
" nnoremap <silent><leader>jd :YcmCompleter GetDoc<CR>
" nnoremap <silent><leader>jt :YcmCompleter GetType<CR>
" nnoremap <silent><leader>jp :YcmCompleter GetParent<CR>
" nnoremap <silent><leader>jti :YcmCompleter GoToInclude<CR>
" nnoremap <silent><leader>jen :YcmCompleter GoToDefinition<CR>
" nnoremap <silent><leader>jan :YcmCompleter GoToDeclaration<CR>

" ------- COC
nnoremap <silent><leader>fmt :call CocAction('format')<CR>
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>f;ip  <Plug>(coc-fix-current)

" Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

" ------- MAIL
let g:calendar_google_calendar = 1
let g:calendar_google_task     = 1
source ~/.cache/calendar.vim/credentials.vim
nnoremap <silent><leader>uc :Calendar<CR>

" ------- EASY ALIGN
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" #######################################
" -- PLUGINS
" #######################################

call plug#begin()
" ------- VIM TREE
Plug 'preservim/NERDTree'
Plug 'scrooloose/nerdtree'

" ------- OTHER USEFUL TOOLS
Plug 'psliwka/vim-smoothie' " Scrolling
Plug 'gennaro-tedesco/nvim-peekup' " List Registers
Plug 'mtth/scratch.vim' "Scratch Pad for Notes

" ------- VIM ORG-MODE
Plug 'tpope/vim-surround'
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
" Plug 'valloric/youcompleteme'
" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Or build from source code by using yarn: https://yarnpkg.com
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}

" ------- GIT
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" ------- GIT CONNECT TO WEB
Plug 'ruanyl/vim-gh-line'
Plug 'shumphrey/fugitive-gitlab.vim'

" ------- COMMENT OUT LINES
Plug 'tpope/vim-commentary'
Plug 'tmsvg/pear-tree'

" ------- FINDING FILES FZF
Plug 'junegunn/fzf', {'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/rpc' }
Plug 'voldikss/vim-floaterm'

" ------- TAGS
Plug 'majutsushi/tagbar'

" ------- MAIL
Plug 'itchyny/calendar.vim'

" ------- VIM ALIGN
Plug 'junegunn/vim-easy-align'


" ------- NVIM STUFF
if has ('nvim') 	
	" ------- MAKE LANGUAGES STAND OUT
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	Plug 'nvim-treesitter/nvim-treesitter-textobjects'

	" ------- LANGUAGE SYNTAX SUPPORT
	Plug 'sheerun/vim-polyglot'

	" ------- FASF LANGUAGE SUPPORT
	Plug 'ms-jpq/coq_nvim'
	Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}

	" ------- FLOATING TERM
	Plug 'voldikss/vim-floaterm'
endif

call plug#end()
