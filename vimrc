set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'scrooloose/nerdtree'
Plugin 'Rip-Rip/clang_complete'
Plugin 'ervandew/supertab'
Plugin 'vim-syntastic/syntastic'
Plugin 'vim-utils/vim-man'
Plugin 'davidhalter/jedi-vim'
Plugin 'vim-scripts/taglist.vim'

" colors
Plugin 'kamykn/skyhawk'
Plugin 'hzchirs/vim-material'
Plugin 'zanglg/nova.vim'
Plugin 'wesQ3/wombat.vim'
Plugin 'zacanger/angr.vim'
Plugin 'w0ng/vim-hybrid'
Plugin 'NLKNguyen/papercolor-theme'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Settings for syntastic
"let g:syntastic_c_checkers = ['gcc','cppcheck']
let g:syntastic_c_checkers = ['make','cppcheck']
let g:syntastic_cpp_checkers = ['gcc','cppcheck']

let g:syntastic_c_compiler_options = "-Wall"
let g:syntastic_c_include_dirs = ['/usr/include','lib']

let g:syntastic_cpp_compiler_options = "-Wall -std=c++11"
let g:syntastic_cpp_include_dirs = ['/usr/include','lib']


" set colorscheme

"colorscheme mustang
"colorscheme vim-material
"colorscheme hybrid
colorscheme PaperColor
"colorscheme MyPaperColor
"colorscheme spica

" show line number
set number
"highlight search show first pattern while typed
set hlsearch
set incsearch

" min number of lines above and below cursor during scroll
set scrolloff=3

" for indentation
set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2
set cindent shiftwidth=2

" visualbell instead of beeping
set visualbell

" dont show toolbar
set guioptions-=T

"show row and column at statusbar
set ruler

" always show status bar
set laststatus=2
" format for status line
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

" automatically change dir to the dir for open file, 
" could also use set autochdir
autocmd BufEnter * silent! lcd %:p:h


" options for clang_complete
let g:clang_library_path='/usr/lib64/llvm'
let g:clang_snippets = 1
let g:clang_snippets_engine = 'clang_complete'
let g:clang_snippets=1
let g:clang_conceal_snippets=1
let g:clang_complete_copen = 1
" Complete options (disable preview scratch window, longest removed to aways show menu)
set completeopt=menu,menuone
" Limit popup menu height
set pumheight=20
set conceallevel=2
set concealcursor=vin

" SuperTab completion fall-back 
let g:SuperTabDefaultCompletionType='<c-x><c-u><c-p>'

" for recursive find under root dir
set path+=**


" keymappings

" previous item in quickfix list
nmap <F2> :cN<cr>
" next item in quickfix list
nmap <F3> :cn<cr>
"nmap <F4> :grep -R -l \\b

"print quickfix list
nmap <F5> :clist<cr>

" map Alt + Right for next tag
map <M-Right> <C-]>
" map Alt + Left for back from tag
map <M-Left> <C-t>

" move cursor to window to left
map  h
" move cursor to window to below
"map � j
" move cursor to window to above
map  k
" move cursor to window to right
map  l

" Mappings for man-plugin to show section 3 of man page
nnoremap <silent> <Plug>(Man3)  :<C-U>call man#get_page_from_cword('horizontal', 3)<CR>
"nnoremap <silent> <Plug>(Sman3) :<C-U>call man#get_page_from_cword('horizontal', 3)<CR>
"nnoremap <silent> <Plug>(Vman3) :<C-U>call man#get_page_from_cword('vertical',   3)<CR>
"nnoremap <silent> <Plug>(Tman3) :<C-U>call man#get_page_from_cword('tab',        3)<CR>
" bind man section=3 to Alt + m
map <M-m> <Plug>(Man3) 
" bind man without specific section to Alt + Shift + m
map <M-M> <Plug>(Man) 
"map <leader>m <Plug>(Man) 
"
"
"
"
"
"
"
"
"
"
"
"
"
"
"
 
" SuperTab option for context aware completion
" let g:SuperTabDefaultCompletionType = "context"
 
" Disable auto popup, use <Tab> to autocomplete
"let g:clang_complete_auto = 0
" disabled options clang_complete
" set completeopt=menu,longest
" set completeopt = menu,menuone,longest
" let g:clang_snippets_engine='clang_complete'


" Help for Vundle
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
