set -x EDITOR nvim
set -x PATH "$HOME/.local/bin" $PATH
set -x PATH "$HOME/go/bin" $PATH
set -x PATH "$HOME/.cargo/bin" $PATH

alias nv=nvim
alias ls=exa
alias ll="exa -lgH"
alias grep="grep -E --color=auto"

starship init fish | source
zoxide init fish | source
mcfly init fish | source
