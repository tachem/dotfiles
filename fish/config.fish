# pyenv
set -x PATH $HOME/.pyenv/bin $HOME/.pyenv/shims $PATH
pyenv rehash > /dev/null ^&1

# rbenv
set -x PATH $HOME/.rbenv/bin $HOME/.rbenv/shims $PATH
rbenv rehash > /dev/null ^&1

# nodebrew
set -x PATH $HOME/.nodebrew/current/bin $PATH

# seg -> gnu_sed
function sed
    gsed $argv
end

# ctags -> exuberant ctags
function ctags
    /usr/local/Cellar/ctags/5.8_1/bin/ctags $argv
end