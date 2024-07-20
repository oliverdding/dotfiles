AddPackage akregator # A Feed Reader by KDE
AddPackage code # The Open Source build of Visual Studio Code (vscode) editor
AddPackage fcitx5 # Next generation of fcitx
AddPackage fcitx5-configtool # Configuration Tool for Fcitx5
AddPackage fcitx5-gtk # Fcitx5 gtk im module and glib based dbus client library
AddPackage fcitx5-qt # Fcitx5 Qt Library (Qt5 & Qt6 integrations)
AddPackage fcitx5-rime # RIME support for Fcitx5
AddPackage kasts # Kirigami-based podcast player
AddPackage kcachegrind # Visualization of Performance Profiling Data
AddPackage kdenlive # A non-linear video editor for Linux using the MLT video framework
AddPackage kget # Download Manager
AddPackage kid3 # An MP3, Ogg/Vorbis and FLAC tag editor, KDE version
AddPackage ktorrent # A powerful BitTorrent client for KDE
AddPackage neochat # A client for matrix, the decentralized communication protocol
AddPackage obsidian # A powerful knowledge base that works on top of a local folder of plain text Markdown files
AddPackage pot-translation # 一个跨平台的划词翻译软件 | A cross-platform software for text translation.
AddPackage rime-ice-pinyin-git # Rime 配置：雾凇拼音 | 长期维护的简体词库 - 拼音方案
AddPackage telegram-desktop # Official Telegram Desktop client
AddPackage sweeper # System Cleaner
AddPackage xorg-xwininfo # Command-line utility to print information about windows on an X server

AddPackage --foreign clash-verge-rev-bin # Continuation of Clash Verge | A Clash Meta GUI based on Tauri
AddPackage --foreign google-chrome # The popular web browser by Google (Stable Channel)
AddPackage --foreign linuxqq # New Linux QQ based on Electron
AddPackage --foreign lrcget-bin # Utility for mass-downloading LRC synced lyrics for your offline music library.
AddPackage --foreign qmplay2 # QMPlay2 is a video and audio player which can play most formats and codecs
AddPackage --foreign zotero-beta-bin # Zotero is a free, easy-to-use tool to help you collect, organize, cite, and share research.

CopyFile /etc/systemd/system/clash-verge-service.service
CreateLink /etc/systemd/system/multi-user.target.wants/clash-verge-service.service /etc/systemd/system/clash-verge-service.service
