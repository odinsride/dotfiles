if status is-interactive
    # Commands to run in interactive sessions can go here
end
starship init fish | source

set -gx EDITOR nvim
set -gx VISUAL nvim

# Aliases
alias vi='nvim'
alias vim='nvim'

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
