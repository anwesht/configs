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
"let mapleader = " "
map <Space> <Leader>

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
" Case sensitive searching if you use capital letters else insensitive.
set smartcase
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
"set list
"set listchars=
"set listchars+=tab:› \
"set listchars=tab:»\ ,trail:·
"set listchars+=trail:·
" -----------------------------------------------------------------------------

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
"nnoremap <leader>u :UndotreeShow<CR>

" Remaps for showing the file tree in a small window
" This is equivalent to spliting the window verticalling, opening the
" file tree, and resizeing the vertical window to 30 columns.
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
" ps: Project Search. search using rip grep.
"nnoremap <Leader>ps :Rg<SPACE>
nnoremap <Leader>ps :call VSCodeNotify('workbench.view.search')
nnoremap <Leader>pa :call VSCodeNotify('workbench.action.findInFiles')

nnoremap <C-p> :GFiles<CR>
"nnoremap <Leader>pf :Files<CR>
nnoremap <Leader>pf :call VSCodeNotify('workbench.action.toggleSidebarVisibility')<CR>

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

"  CoC settings are in the file: ~./config/nvim/coc-settings.json
"  * coc-python:
"    - Set virtual environment folder in file: python.venvFolders
"    - Set interpreter :CocCommand python.setInterpreter
"" GoTo code navigation.
"nmap <silent> gd <Plug>(coc-definition)
"nmap <silent> gy <Plug>(coc-type-definition)
"nmap <silent> gi <Plug>(coc-implementation)
"nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> gr :call VSCodeNotify('editor.action.goToReferences')<CR>
nnoremap <silent> gy :call VSCodeNotify('editor.action.goToTypeDefinition')<CR>
nnoremap <silent> gi :call VSCodeNotify('editor.action.goToImplementation')<CR>

" nmap <leader>gd <Plug>(coc-definition)
" nmap <leader>gy <Plug>(coc-type-definition)
" nmap <leader>gi <Plug>(coc-implementation)
" This remap doesn't seem to work if preceded by <leader> for some reason.
"nmap <leader>gr <Plug>(coc-references)

"nnoremap <silent>gr :<C-u>call CocAction('jumpReferences')<CR>

" Symbl renaming.
"nmap <leader>rn <Plug>(coc-rename)
"nmap <leader>g[ <Plug>(coc-diagnostic-prev)
"nmap <leader>g] <Plug>(coc-diagnostic-next)
" Nagivate diagnostics
"nmap <silent> <leader>gp <Plug>(coc-diagnostic-prev-error)
"nmap <silent> <leader>gn <Plug>(coc-diagnostic-next-error)
"nnoremap <leader>cr :CocRestart
" Remap so that the closing brace is sent a line below and cursor is inside
" the braces.
"inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" Highlight the symbol and its references when holding the cursor.
"autocmd CursorHold * silent call CocActionAsync('highlight')

" Formatting selected code.
"xmap <leader>f <Plug>(coc-format-selected)
"nmap <leader>f <Plug>(coc-format-selected)

" Use <TAB> for selections ranges.
"nmap <silent> <TAB> <Plug>(coc-range-select)
"xmap <silent> <TAB> <Plug>(coc-range-select)

" Adding coc-status to status line.
"set statusline^=%{coc#status()}

" -----------------------------------------------------------------------------
"  FuGITive
" -----------------------------------------------------------------------------
"nmap <leader>gh :diffget //3<CR>
"nmap <leader>gu :diffget //2<CR>
"nmap <leader>gs :G<CR>

" -----------------------------------------------------------------------------
" Highlight the current line under cursor: Have to keep it here or highlights.
" -----------------------------------------------------------------------------
hi clear CursorLine
hi CursorLine gui=underline
set cursorline

" -----------------------------------------------------------------------------
"  Autocommands
" -----------------------------------------------------------------------------
