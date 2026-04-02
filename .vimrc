syntax on

set list
set listchars=tab:»\ ,trail:·

set timeoutlen=1000
set ttimeoutlen=0

set expandtab
set tabstop=2
set shiftwidth=2

" stopping g from randomly being inserted windows 10
" https://github.com/wezterm/wezterm/issues/241#issuecomment-660526424
if $TERM =~ 'xterm-256color'
  set noek
endif
