if has("terminfo")
    set t_Co=16
    set t_AB=^[[%?%p1%{8}%<%t%p1%{40}%+%e%p1%{92}%+%;%dm
    set t_AF=^[[%?%p1%{8}%<%t%p1%{30}%+%e%p1%{82}%+%;%dm
else
    set t_Co=16
    set t_Sf=^[[3%dm
    set t_Sb=^[[4%dm
endif
set term=xterm
set background=dark
set backupext=.bak
set showmatch
syntax on
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
set background=dark
filetype indent on
