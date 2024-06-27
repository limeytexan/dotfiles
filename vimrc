syntax on
set background=dark
set formatoptions=ro

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
highlight WhitespaceTab ctermbg=red guibg=red
match WhitespaceTab /\s\+\t\+/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
highlight LeadingTabsAsGreen ctermbg=darkgreen guibg=darkgreen
match LeadingTabsAsGreen /^\t\+/

set foldmethod=syntax
" set foldnestmax=10
" set foldlevel=1
" set foldminlines=1
" set foldcolumn=1
set nofoldenable
" Reminder: type :set foldenable to enable folding

set hlsearch

:if has("terminfo")
:  set t_Co=8
:  set t_Sf=1%dm
:  set t_Sb=1%dm
:else
:  set t_Co=8
:  set t_Sf=m
:  set t_Sb=m
:endif

set autoindent

:function Stt()
:  g/        /s//\t/g
:  g/       /s//\t/g
:  g/      /s//\t/g
:  g/     /s//\t/g
:endfunction
:map <F6> :call Stt()<CR>
:function Stt2()
:  g/    /s//\t/g
:  g/   /s//\t/g
:  g/  /s//\t/g
:  g/ \t/s//\t/g
:endfunction
:map <F7> :call Stt2()<CR>

" https://techglimpse.com/vim-highlighting-texts-red-error/
" hi Error NONE
