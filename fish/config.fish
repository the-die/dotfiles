set -x EDITOR nvim
set -x PATH "$HOME/.local/bin" $PATH
set -x PATH "$HOME/go/bin" $PATH
set -x PATH "$HOME/.cargo/bin" $PATH
set -x GTK_IM_MODULE fcitx
set -x QT_IM_MODULE fcitx
set -x XMODIFIERS "@im=fcitx"

alias nv=nvim
alias cat=bat
alias ls=exa
alias ll="exa -lgH"
alias grep="grep -E --color=auto"

starship init fish | source
zoxide init fish | source
mcfly init fish | source
