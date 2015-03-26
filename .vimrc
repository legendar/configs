set nocompatible " be iMproved
filetype off " required for vundle
set rtp+=~/.vim/bundle/vundle/ " add vundle to runtime directory
call vundle#rc() " call vundle

" required (for vundle auto-update)
Bundle 'gmarik/vundle'

" here add own bundles
Bundle 'git://github.com/scrooloose/nerdtree.git'
Bundle 'maksimr/vim-jsbeautify'
Bundle 'oinksoft/tcd.vim'
"Bundle 'https://github.com/marijnh/tern_for_vim'
"Bundle 'vtreeexplorer'
Bundle 'kchmck/vim-coffee-script'

filetype plugin indent on " required for vundle


" Показывать положение курсора всё время.
set ruler
" Скрывать указатель мыши, когда печатаем
set mousehide


" Показывать незавершённые команды в статусбаре
set showcmd

" Поиск по набору текста (очень полезная функция)
set incsearch
" Включаем подстветку найденных вариантов
set hlsearch

" Отключить создание файлов бекапа и свапа
set nobackup
set nowritebackup
set noswapfile

" Кодировка текста по умолчанию
set termencoding=utf-8
" Список используемых кодировок для автоматического их определения
set fileencodings=utf-8,cp1251,koi8-r

" Не выгружать буфер, когда переключаемся на другой
" Это позволяет редактировать несколько файлов в один и тот же момент без
" необходимости сохранения каждый раз
" когда переключаешься между ними
set hidden

" Считать русские буквы тоже командами
"set iskeyword=@,a-z,A-Z,48-57,_,128-175,192-255
" set langmap=йцукенгшщзхъфывапролджэячсмитьбюЙЦУКЕНГШЩЗХ~ZФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;qwertyuiop[]asdfghjkl\;'zxcvbnm,.QWERTYUIOP{}ASDFGHJKL:\"ZXCVBNM<>

" Включаем нумерацию строк
"set nu

" Включить автоотступы
set autoindent
set smartindent

" Влючить подстветку синтаксиса
syntax on

" Преобразование Таба в пробелы
set expandtab
" Размер отступов
set shiftwidth=2
" Размеры табуляций
set tabstop=2
set softtabstop=2
" Более "умные" отступы при вставке их с помощью tab.
" На самом деле заметить влияние этой опции тяжело, но хуже из-за нее не
" будет :)
set smarttab

" Включаем фолдинг (сворачивание участков кода)
"set foldenable
" Сворачивание по отступам
" set fdm=indent " сворачивать по отступам
"set fdm=syntax " свовачивать по синтаксису
" Автоматическое открытие сверток при заходе в них
"set foldopen=all

"Автоматическое переключение рабочей папки
set autochdir

" Автоматическое закрытие скобок
imap [ []<LEFT>
imap ( ()<LEFT>
imap { {}<LEFT>

" для удобства создания функций
"imap if( if(<RIGHT><space>{<cr><cr><backspace><UP><UP><END><LEFT><LEFT><LEFT>
"imap pf( public function<space>(<RIGHT><space>{<cr><cr><backspace><UP><UP><END><LEFT><LEFT><LEFT><LEFT>
"imap pvf( private function<space>(<RIGHT><space>{<cr><cr><backspace><UP><UP><END><LEFT><LEFT><LEFT><LEFT>
"imap prf( protected function<space>(<RIGHT><space>{<cr><cr><backspace><UP><UP><END><LEFT><LEFT><LEFT><LEFT>
"imap f( function<space>(<RIGHT><space>{<cr><cr><backspace><UP><UP><END><LEFT><LEFT><LEFT>
"imap cl( class<space><space>{<cr><backspace><cr><cr><cr><UP><UP><TAB>pf(__construct<UP><UP><END><LEFT><LEFT>

" Ctrl-пробел для автодополнения
" inoremap <C-space> <C-x><C-o>

"Ctrl-w - удаление текущего буфера
nmap <C-w> :bd<cr>
imap <C-w> <esc>:bd<cr>

nmap <C-a> :tabnew<cr>
imap <C-a> <esc>:tabnew<cr>

nmap <C-v> :vnew<cr>
imap <C-v> <esc>:vnew<cr>

" Сделать строку команд высотой в одну строку
set ch=1

" allow to use backspace instead of "x"
set backspace=indent,eol,start

" Перемещать курсор на следующую строку при нажатии на клавиши вправо/влево/etc
set whichwrap+=<,>,[,]

" Формат строки состояния
set statusline=%<%f%h%m%r\ %b\ %{&encoding}\ 0x\ \ %l,%c%V\ %P
set laststatus=2

" Fix <Enter> for comment
" set fo+=cr

" Опции сесссий
" set sessionoptions=curdir,buffers,tabpages

" описание функции по нажатии F1
"imap <F1> <esc><S-k><cr>i<Right>
"nmap <F1> <S-k><cr>
"map <S-F1> <esc>:help <c-r>=expand("<cword>")<cr><cr>

set clipboard=unnamedplus
" C-c and C-v - Copy/Paste в глобальный клипборд
vmap <C-C> "+yi
" vmap <C-Insert> "+yi<Backspace>
"imap <C-V> <esc><Right>"+gPi
" imap <S-Insert> <Esc>"+gPi
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>


" C-d - дублирование текущей строки
imap <C-d> <esc>yypi

" F2 - быстрое сохранение
nmap <F2> :w<cr>
vmap <F2> <esc>:w<cr>
imap <F2> <esc>:w<cr>a

" F3 - очистить подсветку поиска
nmap <F3> :nohlsearch<cr>
vmap <F3> <esc>:nohlsearch<cr>
imap <F3> <esc>:nohlsearch<cr>a

" F4 - Вызвать NERDTree
nmap <F4> :NERDTree /www<cr>
imap <F4> <ESC>:NERDTree /www<CR>
vmap <F4> <ESC>:NERDTree /www<CR>
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=2
"let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=0
" Disable display of the 'Bookmarks' label and 'Press ? for help' text
let NERDTreeMinimalUI=1
" Use arrows instead of + ~ chars when displaying directories
let NERDTreeDirArrows=1
let NERDTreeBookmarksFile= $HOME . '/.vim/.NERDTreeBookmarks'
"autocmd BufEnter * if &modifiable | NERDTreeFind | wincmd p | endif

" С-q - выход из Vim
imap <C-Q> <Esc>:qa<cr>
map <C-Q> <Esc>:qa<cr>
" map <C-Q><C-Q> <Esc>:qa!<cr>

" Автозавершение слов по tab =)
function InsertTabWrapper()
 let col = col('.') - 1
 if !col || getline('.')[col - 1] !~ '\k'
  return "\<tab>"
 else
  return "\<c-p>"
 endif
endfunction
imap <tab> <c-r>=InsertTabWrapper()<cr>

" Слова откуда будем завершать
set complete=""
" Из текущего буфера
set complete+=.
" Из словаря
set complete+=k
" Из других открытых буферов
set complete+=b
" из тегов
set complete+=t


" Задаем собственные функции для назначения имен заголовкам табов -->
    function MyTabLine()
        let tabline = ''

        " Формируем tabline для каждой вкладки -->
            for i in range(tabpagenr('$'))
                " Подсвечиваем заголовок выбранной в данный момент вкладки.
                if i + 1 == tabpagenr()
                    let tabline .= '%#TabLineSel#'
                else
                    let tabline .= '%#TabLine#'
                endif

                " Устанавливаем номер вкладки
                let tabline .= '%' . (i + 1) . 'T'

                " Получаем имя вкладки
                let tabline .= ' %{MyTabLabel(' . (i + 1) . ')} '
            endfor
        " Формируем tabline для каждой вкладки <--

        " Заполняем лишнее пространство
        let tabline .= '%#TabLineFill#%T'

        " Выровненная по правому краю кнопка закрытия вкладки
        "if tabpagenr('$') > 1
        "    let tabline .= '%=%#TabLine#%999XX'
        "endif

        return tabline
    endfunction

    function MyTabLabel(n)
        let label = ''
        let buflist = tabpagebuflist(a:n)

        " Имя файла и номер вкладки -->
            let label = substitute(bufname(buflist[tabpagewinnr(a:n) - 1]), '.*/', '', '')

            if label == ''
                let label = '[No Name]'
            endif

            let label = a:n . ':' . label
        " Имя файла и номер вкладки <--

        " Определяем, есть ли во вкладке хотя бы один
        " модифицированный буфер.
        " -->
            for i in range(len(buflist))
                if getbufvar(buflist[i], "&modified")
                    " let label = '[+] ' . label
                    let label = '* ' . label
                    break
                endif
            endfor
        " <--

        return label
    endfunction

    function MyGuiTabLabel()
        return '%{MyTabLabel(' . tabpagenr() . ')}'
    endfunction

    set tabline=%!MyTabLine()
    set guitablabel=%!MyGuiTabLabel()
" Задаем собственные функции для назначения имен заголовкам табов <--

" глюк с перемещением курсора
"imap <ESC> <ESC><Right>

" Подстветка SQL внутри PHP строк
let php_sql_query=1

" Подстветка HTML внутри PHP строк
let php_htmlInStrings=1

" Подстветка базовых функций PHP
let php_baselib = 1

" отключаем перенос строк
set nowrap

" игнорируем регистр при поиске (set sts - не игнорировать)
set ic

" более привычный PAGEUP/PAGEDOWN
nmap <PageUp> <C-U><C-U>
imap <PageUp> <C-O><C-U><C-O><C-U>
nmap <PageDown> <C-D><C-D>
imap <PageDown> <C-O><C-D><C-O><C-D>

" Показываем табы и завершающие пробелы точками
set list
set listchars=tab:·\ ,trail:·

" индикатор 80 символов
" highlight ColLengthLimit ctermbg=red ctermfg=white guibg=#592929
" match ColLengthLimit /\%80v./
" :au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%80v.', -1)

" load closetag
":au Filetype * source ~/.vim/scripts/closetag.vim
"imap <C-Tab> <c-r>=GetCloseTag()<cr>
"nmap <C-Tab> a<c-r>=GetCloseTag()<cr>

" taglist settings
"let g:tlist_php_settings = 'php;c:class;f:function'
"let g:Tlist_Show_One_File = 1
"imap <F5> <ESC>:TlistToggle<CR>a
"vmap <F5> <ESC>:TlistToggle<CR>a
"nmap <F5> :TlistToggle<CR>

" Поиск и замена слова под курсором
nmap <S-r> :%s/\<<c-r>=expand("<cword>")<cr>\>/

" Выключаем ненавистный режим замены
imap >Ins> <Esc>i

" disable F1
map <F1> <Esc>
vmap <F1> <Esc>
imap <F1> <Esc>a

" move/tab blocks in vmode
vmap < <gv
vmap > >gv
vmap <S-Tab> <
vmap <Tab> >

" set title titlestring=VIM\ :::\ Vi\ IMproved
set title titlestring=%t


" для проверки правописания. можно забиндить на хоткеи
" setlocal spell spelllang=ru_ru,en_us

" для правильной работы управляемых клавишь в русском языке
" НЕ РАБОТАЕТ! Точнее походу требует переключения раскладки самостоятельно внутри VIM
" set keymap=russian-jcukenwin
" set iminsert=0
" set imsearch=0
" highlight lCursor guifg=NONE guibg=Cyan

" устанавливаем шрифт
set guifont=Monospace\ 12

" Цветовая схема
colorscheme legendar

" подсветка текущей строки и столбца
set cursorline
set cursorcolumn

nmap <silent> <A-k> :wincmd k<CR>
nmap <silent> <A-j> :wincmd j<CR>
nmap <silent> <A-h> :wincmd h<CR>
nmap <silent> <A-l> :wincmd l<CR>

"autocmd FileType *.coffee set tabstop=2|set shiftwidth=2|set noexpandtab

nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>
