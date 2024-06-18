" ############### Configurações para todos os modos de execução ############### 
set tabstop=3
set shiftwidth=3
set number
set relativenumber
syntax on
set backspace=indent,eol,start
set termguicolors 

" Ocultando as barras de rolagem e de ferramentas
augroup HideScrollbar
    autocmd!
    autocmd VimEnter * set guioptions-=rL
	 autocmd VimEnter * set guioptions-=T
augroup END

" #############################################################################

" Verificar se o Vim está sendo executado no modo terminal
if !has('gui_running')
 	" Configurações específicas para o Vim (modo terminal)
	set nocompatible
	filetype off
	set rtp+=~/.vim/bundle/Vundle.vim
	call vundle#begin()

	" ####################### Instalação de plugins #######################

	Plugin 'VundleVim/Vundle.vim'
	Plugin 'vim-airline/vim-airline'
	Plugin 'vim-airline/vim-airline-themes'
	Plugin 'dracula/vim'
	Plugin 'scrooloose/nerdtree'
	Plugin 'ryanoasis/vim-devicons'

	" ######## Configuração do plugin airline #######

	let g:airline#extensions#tabline#enabled = 1
	let g:airline#extensions#tabline#left_sep = ' '
	let g:airline#extensions#tabline#left_alt_sep = '|'
	let g:airline_theme='dark'
	let g:airline_section_warning = ''

	" ####### Configuração do plugin nerdtree #######

	"autocmd vimenter * NERDTree
	map <C-n> :NERDTreeToggle<CR>
	let g:NERDTreeDirArrowExpandable = '+'
	let g:NERDTreeDirArrowCollapsible = '»'
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
	let g:NERDTreeWinPos = "left"
	autocmd vimenter * wincmd p
	let NERDTreeQuitOnOpen = 1

	call vundle#end()
	filetype plugin indent on

else
	" Configurações específicas para o gvim (modo gráfico)
	set guifont=FantasqueSansMono\ Nerd\ Font:h13
	color dracula

 	" Configurações específicas para o Vim (modo terminal)
	filetype off
	set rtp+=~/.vim/bundle/Vundle.vim
	call vundle#begin()

	" ####################### Instalação de plugins #######################

	Plugin 'VundleVim/Vundle.vim'
	Plugin 'vim-airline/vim-airline'
	Plugin 'vim-airline/vim-airline-themes'
	Plugin 'dracula/vim'
	Plugin 'scrooloose/nerdtree'
	Plugin 'ryanoasis/vim-devicons'

	" ######## Configuração do plugin airline #######

	let g:airline#extensions#tabline#enabled = 1
	let g:airline#extensions#tabline#left_sep = ' '
	let g:airline#extensions#tabline#left_alt_sep = '|'
	let g:airline_theme='dark'
	let g:airline_section_warning = ''

	" ####### Configuração do plugin nerdtree #######

	"autocmd vimenter * NERDTree
	map <C-n> :NERDTreeToggle<CR>
	let g:NERDTreeDirArrowExpandable = '+'
	let g:NERDTreeDirArrowCollapsible = '»'
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
	let g:NERDTreeWinPos = "left"
	autocmd vimenter * wincmd p
	let NERDTreeQuitOnOpen = 1

	call vundle#end()
	filetype plugin indent on

endif

" Mapeamentos
map <C-a> ggVG										" Selecionar tudo
imap <C-a> <ESC>ggVG<CR>a						" Selecionar tudo
map <C-s> :w<CR>									" Salvar documento
imap <C-s> <ESC>:w<CR>							" Salvar documento
map <C-x> :wq<CR>									" Salvar documento e sair
imap <C-x> <ESC>:wq<CR>							" Salvar documento e sair
map <C-q> :q!<CR>									" Fechar documento sem salvar
imap <C-q> <ESC>:q!<CR>							" Fechar documento sem salvar

map <F5> :source $HOME\.vimrc<CR>			" Atualizar arquivo de configuração
imap <F5> <ESC>:source $HOME\.vimrc<CR>	" Atualizar arquivo de configuração
 


" ########################### Templates ########################### 

" Template HTML
function GerarHTML()
	read ~/.vim/myfiles/templateHTML.html
endfunction

" Comandos para os templates
command GerarHTML call GerarHTML()

" #################################################################




