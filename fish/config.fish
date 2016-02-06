# pyenv
set -x PATH $HOME/.pyenv/bin $HOME/.pyenv/shims $PATH
pyenv rehash > /dev/null ^&1

# rbenv
set -x PATH $HOME/.rbenv/bin $HOME/.rbenv/shims $PATH
rbenv rehash > /dev/null ^&1

# nodebrew
set -x PATH $HOME/.nodebrew/current/bin $PATH

# sed -> gnu_sed
function sed
    gsed $argv
end