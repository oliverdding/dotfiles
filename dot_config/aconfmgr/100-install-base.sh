AddPackage base # Minimal package set to define a basic Arch Linux installation
AddPackage bash-completion # Programmable completion for the bash shell
AddPackage base-devel # Basic tools to build Arch Linux packages
AddPackage bind # A complete, highly portable implementation of the DNS protocol
AddPackage iwd # Internet Wireless Daemon
AddPackage less # A terminal based program for viewing text files
AddPackage man-db # A utility for reading man pages
AddPackage net-tools # Configuration tools for Linux networking
AddPackage openssh # SSH protocol implementation for remote login, command execution and file transfer
AddPackage paru # Feature packed AUR helper
AddPackage pigz # Parallel implementation of the gzip file compressor
AddPackage run-parts # run scripts or programs in a directory
AddPackage unarchiver # unar and lsar: Objective-C tools for uncompressing archive files
AddPackage unrar # The RAR uncompression program
AddPackage unzip # For extracting and viewing files in .zip archives
AddPackage which # A utility to show the full path of commands
AddPackage xdg-user-dirs # Manage user directories like ~/Desktop and ~/Music
AddPackage zip # Compressor/archiver for creating and modifying zipfiles

CopyFile /etc/systemd/timesyncd.conf.d/china.conf

CreateLink /etc/systemd/system/dbus-org.freedesktop.timesync1.service /usr/lib/systemd/system/systemd-timesyncd.service
CreateLink /etc/systemd/system/sysinit.target.wants/systemd-timesyncd.service /usr/lib/systemd/system/systemd-timesyncd.service
