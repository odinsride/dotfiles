# Aliases
alias mount-lib='sudo mount -t cifs //192.168.50.199/library /mnt/library -o credentials=$HOME/.smbcredentials,uid=1000,gid=1000,file_mode=0744,dir_mode=0755'
alias umount-lib='sudo umount /mnt/library'

alias mount-archive='sudo mount -t cifs //192.168.50.199/archive /mnt/archive -o credentials=$HOME/.smbcredentials,uid=1000,gid=1000,file_mode=0744,dir_mode=0755'
alias umount-archive='sudo umount /mnt/archive'

