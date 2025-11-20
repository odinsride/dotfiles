if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Fish shell configuration converted from zsh
# Add Homebrew to PATH (Apple Silicon Mac)
set -gx PATH /opt/homebrew/bin /opt/homebrew/sbin $PATH

# PostgreSQL configuration
set -gx PATH /opt/homebrew/opt/postgresql@17/bin $PATH
set -gx PATH /opt/homebrew/opt/libpq/bin $PATH

# Mise (formerly rtx) activation
if test -f /Users/sitheris/.local/bin/mise
    /Users/sitheris/.local/bin/mise activate fish | source
end

# THOR merge tool
set -gx THOR_MERGE /Users/sitheris/.local/bin/app_update_thor_merge_tool

# Initialize Starship prompt
starship init fish | source

# Aliases
alias ssha='eval (ssh-agent -c); and ssh-add'
alias brewup='brew update; and brew upgrade; and brew cleanup; and brew doctor'
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias vi='nvim'
alias vim='nvim'

alias mount-lib='sudo mount -t cifs //saturn.local/library /mnt/library -o credentials=$HOME/.smbcredentials,uid=1000,gid=1000,file_mode=0744,dir_mode=0755'
alias umount-lib='sudo umount /mnt/library'
