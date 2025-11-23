if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx EDITOR nvim
set -gx VISUAL nvim

# Initialize Starship prompt
starship init fish | source

# Aliases
alias ssha='eval (ssh-agent -c); and ssh-add'
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias vi='nvim'
alias vim='nvim'

# OS-specific config
if test (uname) = Darwin
    source ~/.config/fish/macos.fish
else if test (uname) = Linux
    source ~/.config/fish/linux.fish
end
