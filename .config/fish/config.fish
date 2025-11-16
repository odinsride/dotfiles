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

alias mount-lib='sudo mount -t cifs //saturn.local/library /mnt/library -o credentials=$HOME/.smbcredentials,uid=1000,gid=1000,file_mode=0744,dir_mode=0755'
alias umount-lib='sudo umount /mnt/library'
