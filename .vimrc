set nocompatible        " Désactive la compatibilité avec vi
filetype off

set title               " Mais a jour le titre de votre fenetre ou de votre terminal
set list                " Affiche caractere invisible
set listchars=tab:>─,eol:¬,trail:\ ,nbsp:¤
set number              " Affiche les numéros de ligne
set relativenumber      " Active Numerotation relative
set smartindent         " Indentation intelligente
set smarttab
set autoindent          " Conserve l'indentation sur une nouvelle ligne
set ruler               " Affiche la position du curseur
set mouse=a             " Prise en charge de la souris
set mousehide           " Cache la souris pendant la frappe
syntax on               " Coloration syntaxique
set showcmd             " affiche les commandes incomplète
set ruler               " affiche la position du curseur
set showmatch           " Mettre en évidence les parenthèses qui correspondent
set expandtab           " Conversion des tabulations en espaces
set tabstop=4
set shiftwidth=4        " Indentation de quatre colonnes
" set textwidth=79        " 80, le nombre maximal de caractères par ligne
set cursorline          " Souligne la ligne courrante
set ignorecase          " Recherche insensible à la casse
set incsearch           " Recherche insensible à la casse
set splitright          " Mettre nouveller fenetre vsplit a droite de celle actuelle
set encoding=utf-8      " Encodage par défaut des buffers en utf-8
set fileencoding=utf-8  " Encodage par défaut des fichiers en utf-8

set background=dark
set autoread            " Recharge le fichier en cas de modification externe
" autocmd FileType c set colorcolumn=80 " Affiche colonnes limites 80 caractere
set wildmenu            " Enhance command line completion
set wildmode=longest:full,list:full
set wildignore=*.o,*#,*~,*.dll,*.so,*.a
set t_Co=256
set diffopt=vertical
set nofoldenable        " Ne rien cacher par défaut

set omnifunc=syntaxcomplete#Complete
set dictionary=/usr/share/bin/words
set path+=**
set tags=tags

"<=== Configuration Raccourci Clavier ===>
" Aller à l'onglet suivant
nnoremap <C-Left>  :tabprevious<CR>
" Aller à l'onglet précédent
nnoremap <C-Right>  :tabnext<CR>
" Fermer l'onglet courant
nnoremap <C-c> :tabclose<CR>
" Ouvrir un nouvel onglet
nnoremap <C-t> :tabnew<CR>
" Ouvrir l'explorateur de fichier
map <F2> :Vexplore<CR>

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'thaerkh/vim-indentguides'
Plugin 'w0rp/ale'


Plugin 'ap/vim-css-color'
Plugin 'nanotech/jellybeans.vim'            " Vim theme : colorscheme jellybeans
Plugin 'tomasiser/vim-code-dark'            " Vim theme : colorscheme codedark
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-fugitive'
Plugin 'valloric/youcompleteme'

Plugin 'tomtom/tcomment_vim'

Plugin 'rrethy/vim-illuminate'
Plugin 'KabbAmine/vCoolor.vim'

Plugin 'AlexisPotelle-Epitech/epitech-header'

call vundle#end()
filetype plugin indent on

"<=== indentation Configuration ===>
let g:indentguides_spacechar = '│'
let g:indentguides_tabchar = '│'
"<=== Theme Configuration ===>
 let g:jellybeans_background_color_256='232'

" Feel free to switch to another colorscheme
colorscheme codedark
"colorscheme jellybeans
let g:closetag_filenames = '*.html,*.xhtml,*.phtml, *.php'

let g:airline_section_b = '%{strftime("%c")}'

nmap <F8> :TagbarToggle<CR>
nmap <F9> :VCoolor<CR> 



autocmd FileType html iabbrev div <div><cr></div><up>
autocmd FileType html iabbrev body <body><cr></body><up>

let g:netrw_banner=0        " disable annoying banner

autocmd FileType c,cpp inoremap main int main(int ac, char **av)<right><CR>{<CR><CR>return (0);<CR>}<up><up><Tab>

autocmd FileType cpp inoremap class class  {<CR>public:<CR>protected:<CR>private:<CR>};<up><up><up><up><right><right><right><right>

