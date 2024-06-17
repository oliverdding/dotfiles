# CreateLink /etc/systemd/system/getty.target.wants/getty@tty1.service /usr/lib/systemd/system/getty@.service

# CreateLink /etc/systemd/system/multi-user.target.wants/remote-fs.target /usr/lib/systemd/system/remote-fs.target
CreateLink /etc/systemd/user/default.target.wants/xdg-user-dirs-update.service /usr/lib/systemd/user/xdg-user-dirs-update.service
# CreateLink /etc/systemd/user/sockets.target.wants/p11-kit-server.socket /usr/lib/systemd/user/p11-kit-server.socket

IgnorePath '/etc/systemd/system/getty.target.wants/getty@tty1.service'
IgnorePath '/etc/systemd/system/multi-user.target.wants/remote-fs.target'
IgnorePath '/etc/systemd/user/sockets.target.wants/p11-kit-server.socket'


# 2024年 06月 16日 星期日 22:44:53 CST - Unknown packages


AddPackage akregator # A Feed Reader by KDE
AddPackage ark # Archiving Tool
AddPackage base-devel # Basic tools to build Arch Linux packages

AddPackage code # The Open Source build of Visual Studio Code (vscode) editor
AddPackage compsize # Calculate compression ratio of a set of files on Btrfs
AddPackage dolphin # KDE File Manager
AddPackage dolphin-plugins # Extra Dolphin plugins
AddPackage dosfstools # DOS filesystem utilities
AddPackage doxygen # Documentation system for C++, C, Java, IDL and PHP
AddPackage egl-wayland # EGLStream-based Wayland external platform
AddPackage elisa # A simple music player aiming to provide a nice experience for its users
AddPackage exfat-utils # Utilities for exFAT file system
AddPackage fatresize # A utility to resize FAT filesystems using libparted
AddPackage fcitx5 # Next generation of fcitx
AddPackage fcitx5-configtool # Configuration Tool for Fcitx5
AddPackage fcitx5-gtk # Fcitx5 gtk im module and glib based dbus client library
AddPackage fcitx5-qt # Fcitx5 Qt Library (Qt5 & Qt6 integrations)
AddPackage fcitx5-rime # RIME support for Fcitx5
AddPackage ffmpegthumbnailer # Lightweight video thumbnailer that can be used by file managers
AddPackage ffmpegthumbs # FFmpeg-based thumbnail creator for video files
AddPackage flatpak-kcm # Flatpak Permissions Management KCM
AddPackage fwupd # Simple daemon to allow session software to update firmware
AddPackage gopls # Language server for Go programming language
AddPackage gst-plugin-pipewire # Multimedia graph framework - pipewire plugin
AddPackage gwenview # A fast and easy to use image viewer
AddPackage kalk # A powerful cross-platform calculator application built with the Kirigami framework
AddPackage kasts # Kirigami-based podcast player
AddPackage kate # Advanced text editor
AddPackage kcachegrind # Visualization of Performance Profiling Data
AddPackage kdeconnect # Adds communication between KDE and your smartphone
AddPackage kdegraphics-thumbnailers # Thumbnailers for various graphics file formats
AddPackage kdenetwork-filesharing # Properties dialog plugin to share a directory with the local network
AddPackage kdenlive # A non-linear video editor for Linux using the MLT video framework
AddPackage kdepim-addons # Addons for KDE PIM applications
AddPackage kdialog # A utility for displaying dialog boxes from shell scripts
AddPackage kget # Download Manager
AddPackage kid3 # An MP3, Ogg/Vorbis and FLAC tag editor, KDE version
AddPackage kimageformats # Image format plugins for Qt 6
AddPackage kjournald # Framework for interacting with systemd-journald
AddPackage kmail # KDE mail client
AddPackage konsole # KDE terminal emulator
AddPackage ksystemlog # System log viewer tool
AddPackage ktorrent # A powerful BitTorrent client for KDE
AddPackage kwayland5 # Qt-style Client and Server library wrapper for the Wayland libraries
AddPackage layer-shell-qt5 # Qt 5 component to allow applications to make use of the Wayland wl-layer-shell protocol
AddPackage less # A terminal based program for viewing text files
AddPackage libdwarf # A library for handling DWARF Debugging Information Format
AddPackage libpulse # A featureful, general-purpose sound server (client library)
AddPackage libraw # A library for reading RAW files obtained from digital photo cameras (CRW/CR2, NEF, RAF, DNG, and others)
AddPackage libva-utils # Intel VA-API Media Applications and Scripts for libva
AddPackage llvm # Compiler infrastructure
AddPackage ncmpcpp # Almost exact clone of ncmpc with some new features
AddPackage neochat # A client for matrix, the decentralized communication protocol
AddPackage noto-fonts-cjk # Google Noto CJK fonts
AddPackage noto-fonts-emoji # Google Noto emoji fonts
AddPackage ntfs-3g # NTFS filesystem driver and utilities
AddPackage obsidian # A powerful knowledge base that works on top of a local folder of plain text Markdown files
AddPackage okular # Document Viewer
AddPackage packagekit-qt6 # Qt6 bindings for PackageKit
AddPackage papirus-icon-theme # Papirus icon theme
AddPackage partitionmanager # A KDE utility that allows you to manage disks, partitions, and file systems
AddPackage pipewire # Low-latency audio/video router and processor
AddPackage pipewire-alsa # Low-latency audio/video router and processor - ALSA configuration
AddPackage pipewire-jack # Low-latency audio/video router and processor - JACK replacement
AddPackage pipewire-pulse # Low-latency audio/video router and processor - PulseAudio replacement
AddPackage plasma-meta # Meta package to install KDE Plasma
AddPackage plasma-workspace # KDE Plasma Workspace
AddPackage pot-translation # 一个跨平台的划词翻译软件 | A cross-platform software for text translation.
AddPackage qt5-wayland # Provides APIs for Wayland
AddPackage qt6-quick3d # Qt module and API for defining 3D content in Qt Quick
AddPackage rime-ice-pinyin-git # Rime 配置：雾凇拼音 | 长期维护的简体词库 - 拼音方案
AddPackage smartmontools # Control and monitor S.M.A.R.T. enabled ATA and SCSI Hard Drives

AddPackage sof-firmware # Sound Open Firmware
AddPackage spectacle # KDE screenshot capture utility
AddPackage sshfs # FUSE client based on the SSH File Transfer Protocol
AddPackage stylua # Code formatter for Lua
AddPackage sweeper # System Cleaner
AddPackage telegram-desktop # Official Telegram Desktop client
AddPackage ttc-iosevka # Typeface family designed for coding, terminal use and technical documents.

AddPackage unrar # The RAR uncompression program
AddPackage wget # Network utility to retrieve files from the Web
AddPackage wireless_tools # Tools allowing to manipulate the Wireless Extensions
AddPackage wireplumber # Session / policy manager implementation for PipeWire
AddPackage wireshark-qt # Network traffic and protocol analyzer/sniffer - Qt GUI
AddPackage wl-clipboard # Command-line copy/paste utilities for Wayland
AddPackage wqy-bitmapfont # A bitmapped Song Ti (serif) Chinese font
AddPackage wqy-microhei # A Sans-Serif style high quality CJK outline font
AddPackage wqy-microhei-lite # The "Light" face of WenQuanYi Micro Hei font family
AddPackage wqy-zenhei # A Hei Ti Style (sans-serif) Chinese Outline Font.
AddPackage xdg-desktop-portal-gtk # A backend implementation for xdg-desktop-portal using GTK
AddPackage xdg-utils # Command line tools that assist applications with a variety of desktop integration tasks
AddPackage xorg-xwininfo # Command-line utility to print information about windows on an X server


# 2024年 06月 16日 星期日 22:44:55 CST - Unknown foreign packages


AddPackage --foreign clash-verge-rev-bin # Continuation of Clash Verge | A Clash Meta GUI based on Tauri
AddPackage --foreign google-chrome # The popular web browser by Google (Stable Channel)
AddPackage --foreign lrcget-bin # Utility for mass-downloading LRC synced lyrics for your offline music library.
AddPackage --foreign qmplay2 # QMPlay2 is a video and audio player which can play most formats and codecs
AddPackage --foreign zotero-beta-bin # Zotero is a free, easy-to-use tool to help you collect, organize, cite, and share research.


# 2024年 06月 16日 星期日 22:44:55 CST - New / changed files







CreateLink /etc/systemd/system/bluetooth.target.wants/bluetooth.service /usr/lib/systemd/system/bluetooth.service
CreateLink /etc/systemd/system/dbus-org.bluez.service /usr/lib/systemd/system/bluetooth.service
CreateLink /etc/systemd/system/dbus-org.freedesktop.nm-dispatcher.service /usr/lib/systemd/system/NetworkManager-dispatcher.service
CreateLink /etc/systemd/system/dbus-org.freedesktop.timesync1.service /usr/lib/systemd/system/systemd-timesyncd.service
CreateLink /etc/systemd/system/display-manager.service /usr/lib/systemd/system/sddm.service
CreateLink /etc/systemd/system/multi-user.target.wants/NetworkManager.service /usr/lib/systemd/system/NetworkManager.service

CreateLink /etc/systemd/system/network-online.target.wants/NetworkManager-wait-online.service /usr/lib/systemd/system/NetworkManager-wait-online.service
CreateLink /etc/systemd/system/sockets.target.wants/systemd-userdbd.socket /usr/lib/systemd/system/systemd-userdbd.socket
CreateLink /etc/systemd/system/sysinit.target.wants/systemd-timesyncd.service /usr/lib/systemd/system/systemd-timesyncd.service
CreateLink /etc/systemd/system/timers.target.wants/fstrim.timer /usr/lib/systemd/system/fstrim.timer
CreateLink /etc/systemd/system/timers.target.wants/snapper-boot.timer /usr/lib/systemd/system/snapper-boot.timer
CreateLink /etc/systemd/system/timers.target.wants/snapper-cleanup.timer /usr/lib/systemd/system/snapper-cleanup.timer
CreateLink /etc/systemd/system/timers.target.wants/snapper-timeline.timer /usr/lib/systemd/system/snapper-timeline.timer
CreateLink /etc/systemd/user/pipewire-session-manager.service /usr/lib/systemd/user/wireplumber.service
CreateLink /etc/systemd/user/pipewire.service.wants/wireplumber.service /usr/lib/systemd/user/wireplumber.service
CreateLink /etc/systemd/user/sockets.target.wants/pipewire-pulse.socket /usr/lib/systemd/user/pipewire-pulse.socket
CreateLink /etc/systemd/user/sockets.target.wants/pipewire.socket /usr/lib/systemd/user/pipewire.socket

