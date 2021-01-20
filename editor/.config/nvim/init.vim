" =============================================================================
" Uncomment the following section to load the vim configurations to nvim.
" =============================================================================
" set runtimepath^=~/.vim runtimepath+=~/.vim/after
" let &packpath = &runtimepath
" source ~/.vimrc

" Borrowed configs from:
" ThePrimeagen: https://github.com/erkrnt/awesome-streamerrc/tree/master/ThePrimeagen
" Jon Gjengset: https://github.com/jonhoo/configs

" Changing the leader key from ESC to SPACE,
let mapleader = " "

" =============================================================================
" Vim plugins using the plug package manager.
" =============================================================================
" Execute :PlugInstall to install all plugins.
" Execute :PlugClean to remove unlisted plugins.
" Execute :PlugUpdate to update plugins.
" Execute :PlugUpgrade to update vimplug itself.
" =============================================================================
" Install vim-plug first: https://github.com/junegunn/vim-plug
" Note: This is the installation directory for plug.
" I just happened to install it in this directory.
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync
endif
"call plug#begin('~/.vim/plugged')
call plug#begin('~/.config/nvim/plugged')
" -----------------------------------------------------------------------------
" Semantic Language Support
" -----------------------------------------------------------------------------
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" -----------------------------------------------------------------------------
" Install coc extensions
" -----------------------------------------------------------------------------
" - Extensions are managed below using g:coc_global_extensions. The missing
"  extensions are installed when coc starts.
" - coc extensions have to be installed by executing :CocInstall <extension>
" -----------------------------------------------------------------------------
" Syntactic Language Support
" -----------------------------------------------------------------------------
Plug 'rust-lang/rust.vim'
" Formatter for C-family languages
Plug 'rhysd/vim-clang-format'
" -----------------------------------------------------------------------------
" Others
" -----------------------------------------------------------------------------
" Git plugin.
Plug 'tpope/vim-fugitive'
" For man pages
Plug 'vim-utils/vim-man'
" Shows the undo history.
Plug 'mbbill/undotree'
" For syntax highlighting.
Plug 'sheerun/vim-polyglot'
" Command line fuzzy finder.
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" For commenting lines of code.
Plug 'preservim/nerdcommenter'
" Plug '/home/mpaulson/personal/vim-be-good'
" -----------------------------------------------------------------------------
" GUI
" -----------------------------------------------------------------------------
" Plugin to enable disable colorschemes.
Plug 'flazz/vim-colorschemes'
Plug 'sainnhe/gruvbox-material'
Plug 'vim-airline/vim-airline'
" Just select one to use.
" Plug 'gruvbox-community/gruvbox'
" Testing new color theme
"Plug 'chuling/ci_dark'
" Plug 'phanviet/vim-monokai-pro'

" Markdown preview generator
" Requirement: brew install grip
Plug 'JamshedVesuna/vim-markdown-preview'
call plug#end()

" =============================================================================
"  Neovim - my mac specific
" =============================================================================
" Setting up python configurations for neovim based on :checkhealth
" Set the python3 interpreter to use. Needed when multiple pythons installed.
let g:python3_host_prog = '/usr/local/bin/python3'
" Disable the python2 provider. The system python2 doesn't have pip, so
" disabling.
let g:loaded_python_provider = 0

" =============================================================================
"  General Settings
" =============================================================================
" Turn on syntax highlighting
syntax on
set guicursor=
" Show relative line
set relativenumber
" Show line numbers.
set number
" Don't highlight search results. Annoying
set nohlsearch
" Hides buffer instead of closing them when a new file is opened.
set hidden
" set noerrorbells
" -----------------------------------------------------------------------------
" Indentation settings:
" -----------------------------------------------------------------------------
set tabstop=4 softtabstop=4 " Change tab to 4 spaces.
set shiftwidth=4
set expandtab
set smartindent
" -----------------------------------------------------------------------------
" Uncomment to disable softwraps.
" set nowrap
" Proper search
set incsearch
set ignorecase
" Case sensitive searching if you use capital letters else insensitive.
set smartcase
set gdefault
" -----------------------------------------------------------------------------
" Backup related settings
" -----------------------------------------------------------------------------
set noswapfile " Avoid creating .swap files
set nobackup
" NOTE: This directory has to be manually created.
set undodir=~/.local/share/nvim/undodir
set undofile
" -----------------------------------------------------------------------------
" Incremental search.
set incsearch
"  The lowest search result will show up 8 rows above the bottom.
set scrolloff=8
" Give more space for displaying messages.
set cmdheight=2
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
" If this many milliseconds nothing is typed the swap file will be written to
" disk.
set updatetime=50
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
" Set vertical line at column 80
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey
" -----------------------------------------------------------------------------
" Set whitespace characters
" -----------------------------------------------------------------------------
set list
"set listchars=
"set listchars+=tab:› \
"set listchars=tab:»\ ,trail:·
"set listchars=nbsp:¬,tab:»\ ,extends:»,precedes:«,trail:·
set listchars=nbsp:¬,tab:»\ ,extends:»,precedes:«,space:·
"set listchars+=trail:·
" -----------------------------------------------------------------------------

" =============================================================================
"  Plugin Settings
" =============================================================================
" -----------------------------------------------------------------------------
"  Color Scheme
" -----------------------------------------------------------------------------
" Seems to be important for color schemes.
" deal with colors
"if !has('gui_running')
    "set t_Co=256
"endif
"if (match($TERM, "-256color") != -1) && (match($TERM, "screen-256color") == -1)
    ""screen doesn not (yet) support truecolor
    "set termguicolors
"endif
if &term =~ '256color'
    "disable Background color erase (BCE) so that color schemes
    "render properly when inside 2560color GNU screen
    set t_ut=
endif
if has ('termguicolors')
    set termguicolors
endif

" Uncomment to use gruvbox. But material gruvbox seems to be a super set.
 let g:gruvbox_contrast_dark = 'hard'
 colorscheme gruvbox
 set background=dark

" Using gruvbox material. Config=> :help grubbox-material-configuration.
let g:gruvbox_material_palette = 'mix'      " Options: material, mix, original
let g:gruvbox_material_background = 'hard'  " Options: hard, medium, soft
set background=dark                         " Options: light, dark
colorscheme gruvbox-material

" at: using the ci-dark theme
"let g:airline_theme = 'ci_dark'
"colorscheme ci_dark
" -----------------------------------------------------------------------------
" -----------------------------------------------------------------------------
"  vim go (polyglot) settings.
" -----------------------------------------------------------------------------
" let g:go_highlight_build_constraints = 1
" let g:go_highlight_extra_types = 1
" let g:go_highlight_fields = 1
" let g:go_highlight_functions = 1
" let g:go_highlight_methods = 1
" let g:go_highlight_operators = 1
" let g:go_highlight_structs = 1
" let g:go_highlight_types = 1
" let g:go_highlight_function_parameters = 1
" let g:go_highlight_function_calls = 1
" let g:go_highlight_generate_tags = 1
" let g:go_highlight_format_strings = 1
" let g:go_highlight_variable_declarations = 1
" let g:go_auto_sameids = 1

" -----------------------------------------------------------------------------
" Rust
" -----------------------------------------------------------------------------
let g:rustfmt_autosave = 1
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 0
" -----------------------------------------------------------------------------

" -----------------------------------------------------------------------------
"  Markdown plugin
" -----------------------------------------------------------------------------
let vim_markdown_preview_github=1
let vim_markdown_preview_browser='Firefox'
" -----------------------------------------------------------------------------
" Wrapping options
" -----------------------------------------------------------------------------
set formatoptions=tc " wrap text and comments using textwidth
set formatoptions+=r " continue comments when pressing ENTER in I mode
set formatoptions+=q " enable formatting of comments with gq
set formatoptions+=n " detect lists for formatting
set formatoptions+=b " auto-wrap in insert mode, and do not wrap old long lines
" -----------------------------------------------------------------------------

" Set git root for searching.
if executable('rg')
    let g:rg_derive_root='true'
endif

let loaded_matchparen = 1

" -----------------------------------------------------------------------------
" Related to opening files.
" -----------------------------------------------------------------------------
let g:netrw_browse_split = 2
let g:vrfr_rg = 'true'
let g:netrw_banner = 0
let g:netrw_winsize = 25

" -----------------------------------------------------------------------------
"  Keyboard shortcuts
" -----------------------------------------------------------------------------
" Quick-save
nmap <leader>w :w<CR>

" Jump to start and end of line using the home row keys
map H ^
map L $

" Remapping window command (Ctrl + w).
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" Show undo tree.
nnoremap <leader>u :UndotreeShow<CR>

" Remaps for showing the file tree in a small window
" This is equivalent to spliting the window verticalling, opening the
" file tree, and resizeing the vertical window to 30 columns.
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
" ps: Project Search. search using rip grep.
nnoremap <Leader>ps :Rg<SPACE>

nnoremap <C-p> :GFiles<CR>
nnoremap <Leader>pf :Files<CR>
nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
" In visual mode, use J to move line down and K to move line up.
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
" _ is the blackhole register. This remap will delete a line without copying
" it to the buffer in visual mode.
vnoremap X "_d
" Remapping C-c to esc in insert mode.
inoremap <C-c> <esc>
" <leader><leader> toggles between buffers
nnoremap <leader><leader> <c-^>
nmap <leader>; :Buffers<CR>
" <leader>, shows/hides hidden characters
nnoremap <leader>, :set invlist<cr>
" <leader>q shows stats
nnoremap <leader>q g<c-g>

" -----------------------------------------------------------------------------
"  Remaps for navigating autocomplete.
" -----------------------------------------------------------------------------
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if exists('*complete_info')
    inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
    imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif
" -----------------------------------------------------------------------------

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <silent><expr> <C-space> coc#refresh()

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" -----------------------------------------------------------------------------
"  NerdComment remaps
" -----------------------------------------------------------------------------
nmap <C-_> <Plug>NERDCommenterToggle    " Ctrl + /
vmap <C-_> <Plug>NERDCommenterToggle<CR>gv

nmap <C-S-_> <Plug>NERDComMinimalComment
vmap <C-S-_> <Plug>NERDComInvertComment<CR>gv
" -----------------------------------------------------------------------------
" CoC settings
" -----------------------------------------------------------------------------
" CoC extensions. Installed on start.
let g:coc_global_extensions = [
    \'coc-pairs',
    \'coc-rls',
    \'coc-json',
    \'coc-java',
    \'coc-cmake',
    \'coc-texlab',
    \'coc-python',
    \'coc-tsserver'
  \ ]

"  CoC settings are in the file: ~./config/nvim/coc-settings.json
"  * coc-python:
"    - Set virtual environment folder in file: python.venvFolders
"    - Set interpreter :CocCommand python.setInterpreter
"" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" nmap <leader>gd <Plug>(coc-definition)
" nmap <leader>gy <Plug>(coc-type-definition)
" nmap <leader>gi <Plug>(coc-implementation)
" This remap doesn't seem to work if preceded by <leader> for some reason.
"nmap <leader>gr <Plug>(coc-references)

"nnoremap <silent>gr :<C-u>call CocAction('jumpReferences')<CR>

" Symbl renaming.
nmap <leader>rn <Plug>(coc-rename)
nmap <leader>g[ <Plug>(coc-diagnostic-prev)
nmap <leader>g] <Plug>(coc-diagnostic-next)
" Nagivate diagnostics
nmap <silent> <leader>gp <Plug>(coc-diagnostic-prev-error)
nmap <silent> <leader>gn <Plug>(coc-diagnostic-next-error)
nnoremap <leader>cr :CocRestart
" Remap so that the closing brace is sent a line below and cursor is inside
" the braces.
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Formatting selected code.
xmap <leader>f <Plug>(coc-format-selected)
nmap <leader>f <Plug>(coc-format-selected)

" Use <TAB> for selections ranges.
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" Adding coc-status to status line.
set statusline^=%{coc#status()}

" -----------------------------------------------------------------------------
"  FuGITive
" -----------------------------------------------------------------------------
nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>
nmap <leader>gs :G<CR>

" -----------------------------------------------------------------------------
" Highlight the current line under cursor: Have to keep it here or highlights.
" -----------------------------------------------------------------------------
hi clear CursorLine
hi CursorLine gui=underline
set cursorline

" -----------------------------------------------------------------------------
"  Autocommands
" -----------------------------------------------------------------------------
" Follow Rust code style rules
au Filetype rust source ~/.config/nvim/scripts/spacetab.vim
au Filetype rust set colorcolumn=100

" Help filetype detection
autocmd BufRead *.plot set filetype=gnuplot
autocmd BufRead *.md set filetype=markdown
autocmd BufRead *.lds set filetype=ld
autocmd BufRead *.tex set filetype=tex
autocmd BufRead *.trm set filetype=c
autocmd BufRead *.xlsx.axlsx set filetype=ruby
" Script plugins
" autocmd Filetype html,xml,xsl,php source ~/.config/nvim/scripts/closetag.vim
" Shorted text-width for latex files
autocmd Filetype markdown setlocal spell tw=72 colorcolumn=73

" latex settings.
"autocmd Filetype tex setlocal spell tw=72 colorcolumn=73
autocmd Filetype tex setlocal spell tw=70 colorcolumn=71
" coc-texlab settings
autocmd Filetype tex nmap <C-B> :CocCommand latex.Build

" -----------------------------------------------------------------------------
"  Functions:
" -----------------------------------------------------------------------------
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" -----------------------------------------------------------------------------
"  Trim trailing whitespaces on save.
" -----------------------------------------------------------------------------
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun
autocmd BufWritePre * :call TrimWhitespace()
