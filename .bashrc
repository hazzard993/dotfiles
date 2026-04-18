PS1="\[\033[1;32m\]\u@\h\[\033[0m\]:\[\033[1;34m\]\w\[\033[1;33m\]\$(git_branch)\[\033[0m\] \$ "

# for stubborn ssh keys
# https://unix.stackexchange.com/a/217223
if [ ! -S ~/.ssh/ssh_auth_sock ]; then
  eval `ssh-agent`
  ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock
fi
export SSH_AUTH_SOCK=~/.ssh/ssh_auth_sock
ssh-add -l > /dev/null || ssh-add

# use batcat for man pages
# https://askubuntu.com/questions/1506717/how-do-i-tell-man-to-use-batcat-to-view-man-pages
export MANPAGER="sh -c 'col -bx | batcat -l man -p'"
export MANROFFOPT="-c"

# grit integration (https://github.com/jmalloc/grit)
eval "$(grit shell-integration)"
