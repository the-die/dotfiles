set -x EDITOR nvim
set -x PATH "$HOME/.cargo/bin" $PATH

alias nv=nvim
alias ls=exa
alias ll="exa -l"
alias grep="egrep --color=auto"

starship init fish | source
zoxide init fish | source
mcfly init fish | source
