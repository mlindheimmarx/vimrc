set wrap linebreak nolist
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim'}
Plugin 'vim-syntastic/syntastic'
Plugin 'jiangmiao/auto-pairs'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'vim-scripts/taglist.vim'
Plugin 'Chiel92/vim-autoformat'
Plugin 'jakedouglas/exuberant-ctags'
Plugin 'majutsushi/tagbar'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'morhetz/gruvbox'
Plugin 'easymotion/vim-easymotion'
Plugin 'ryanoasis/vim-devicons'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'Rip-Rip/clang_complete'
Plugin 'Shougo/vimshell.vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'wikitopian/hardmode'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'mikewest/vimroom'

call vundle#end()
autocmd vimenter * NERDTree
autocmd vimenter * Tagbar
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd vimenter * MBEOpen
autocmd vimenter * wincmd l
autocmd vimenter * wincmd l
autocmd vimenter * vertical resize 30
autocmd vimenter * wincmd h
autocmd vimenter, BufNewFile, BufReadPost * silent! call HardMode()
autocmd vimenter * RainbowParenthesesToggle
autocmd syntax * RainbowParenthesesLoadRound
autocmd syntax * RainbowParenthesesLoadSquare
autocmd syntax * RainbowParenthesesLoadBraces

let g:clang_library_path='/usr/lib64/libclang.so'

syntax enable

set expandtab
set softtabstop=4
set shiftwidth=4

set number
filetype plugin indent on

set laststatus=2

nmap fn :NERDTreeFocus <RETURN>
nmap fb :MBEFocus <RETURN>
nmap fm :wincmd j <RETURN> :wincmd l <RETURN> :wincmd l <RETURN> :wincmd h <RETURN>
nmap fl <C-w>p
nmap ft :wincmd j <RETURN> :wincmd l <RETURN> :wincmd l <RETURN>

nmap emf <leader><leader>w
nmap emb <leader><leader>b

nmap bn :MBEbn <RETURN>
nmap bp :MBEbp <RETURN>
nmap bd :MBEbd <RETURN>

command! Reload :source ~/.vimrc

filetype plugin indent on


set t_Co=256
set background=dark
colorscheme gruvbox
