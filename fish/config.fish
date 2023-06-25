set -x EDITOR nvim

alias nv=nvim
alias ls=exa
alias ll="exa -lgH"
alias grep="grep -E --color=auto"

starship init fish | source
zoxide init fish | source
mcfly init fish | source
