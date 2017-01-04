# diff-highlight
set -x PATH /usr/local/share/git-core/contrib/diff-highlight $PATH

# pyenv
status --is-interactive; and source (pyenv init -|psub)

# rbenv
status --is-interactive; and . (rbenv init -|psub)

# nodebrew
set -x PATH $HOME/.nodebrew/current/bin $PATH

# direnv
eval (direnv hook fish)

# sed -> gnu_sed
function sed
    gsed $argv
end