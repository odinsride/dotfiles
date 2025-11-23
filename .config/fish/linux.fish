# Aliases
alias mount-lib='sudo mount -t cifs //saturn.local/library /mnt/library -o credentials=$HOME/.smbcredentials,uid=1000,gid=1000,file_mode=0744,dir_mode=0755'
alias umount-lib='sudo umount /mnt/library'
