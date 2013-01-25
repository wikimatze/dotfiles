module("lib.menu")

Debian_menu = {}

-- System/Editors
Debian_menu["Debian_Editors"] = {
  { "Gedit"  , "/usr/bin/gedit" , "/usr/share/pixmaps/gedit-icon.xpm" },
  { "GVIM"   , "/usr/bin/vim.gnome -g -f" , "/usr/share/pixmaps/vim-32.xpm" },
  { "vim"    , "xfce4-terminal -e ".."/usr/bin/vim" },
  { "xournal", "/usr/bin/xournal" }
}

-- System/Emulators
Debian_menu["Debian_Emulators"] = {
  { "VirtualBox", "/usr/bin/virtualbox" , "/usr/share/pixmaps/virtualbox.xpm" },
  { "ZSNES"     , "/usr/bin/zsnes", "/usr/share/pixmaps/zsnes.xpm" }
}

-- System/File-Management
Debian_menu["Debian_File_Management"] = {
  { "Brasero" , "/usr/bin/brasero" },
  { "Nautilus", "/usr/bin/nautilus", "/usr/share/pixmaps/nautilus.xpm" },
  { "Thunar"  , "/usr/bin/thunar" },
  { "Synapse" , "/usr/bin/synapse" }
}

-- System/Graphics
Debian_menu["Debian_Graphics"] = {
  { "Gimp"    , "/usr/bin/gimp", "/usr/share/pixmaps/gimp.xpm" },
  { "Inkscape", "/usr/bin/inkscape", "/usr/share/pixmaps/inkscape.xpm" },
  { "xfig"    , "/usr/bin/xfig", "/usr/share/pixmaps/xfig32x32cmap.xpm" }
}

-- System/Internet
Debian_menu["Debian_Internet"] = {
  { "Deluge" , "/usr/bin/deluge", "/usr/share/pixmaps/deluge.xpm" },
  { "Dropbox", "/usr/bin/dropbox", "/usr/share/icons/hicolor/16x16/apps/dropbox.png" },
  { "Skype", "/usr/bin/skype" },
  { "vinagre", "/usr/bin/vinagre" }
}

-- System/Office
Debian_menu["Debian_Office"] = {
  { "Writer" , "/usr/bin/libreoffice --writer", "/usr/share/icons/hicolor/32x32/apps/libreoffice-writer.xpm" },
  { "Impress", "/usr/bin/libreoffice --impress", "/usr/share/icons/hicolor/32x32/apps/libreoffice-impress.xpm" },
  { "Calc"   , "/usr/bin/libreoffice --calc", "/usr/share/icons/hicolor/32x32/apps/libreoffice-calc.xpm" }
}

-- System/Sound
Debian_menu["Debian_Sound"] = {
  { "Banshee"   , "/usr/bin/banshee", "/usr/share/pixmaps/banshee.xpm" },
  { "Clementine", "/usr/bin/clementine", "/usr/share/pixmaps/clementine.xpm" },
  { "Ex Falso"  , "/usr/bin/exfalso" }
}

-- System/System
Debian_menu["Debian_System"] = {
  { "Time" , "/usr/bin/time-admin", "/usr/share/gnome-system-tools/pixmaps/time.xpm" },
  { "Users", "/usr/bin/users-admin", "/usr/share/gnome-system-tools/pixmaps/users.xpm" }
}

-- System/Utility
Debian_menu["Debian_Utility"] = {
  { "anki", "/usr/bin/anki", "/usr/share/pixmaps/anki.xpm" },
  { "pdfchain", "/usr/bin/pdfchain", "/usr/share/pixmaps/pdfchain.png" },
  { "xfburn", "/usr/bin/xfburn", "/usr/share/icons/hicolor/16x16/stock/media/stock_xfburn-burn-cd.png" }
}

-- System/Video
Debian_menu["Debian_Video"] = {
  { "guvcview"        , "/usr/bin/guvcview", "/usr/share/pixmaps/gv_icon.xpm" },
  { "VLC media player", "/usr/bin/qvlc", "/usr/share/icons/hicolor/32x32/apps/vlc.xpm" }
}

-- System/Viewers
Debian_menu["Debian_Viewers"] = {
  { "Evince", "/usr/bin/evince", "/usr/share/pixmaps/evince.xpm" },
  { "gThumb", "/usr/bin/gthumb", "/usr/share/pixmaps/gthumb.xpm" },
  { "Xpdf"  , "/usr/bin/xpdf", "/usr/share/pixmaps/xpdf.xpm" }
}

-- Glueing the application menu together
Debian_menu["Debian"] = {
  { "Editors" , Debian_menu["Debian_Editors"] },
  { "Emus"    , Debian_menu["Debian_Emulators"] },
  { "Files"   , Debian_menu["Debian_File_Management"] },
  { "Graphics", Debian_menu["Debian_Graphics"] },
  { "Internet" , Debian_menu["Debian_Internet"] },
  { "Office"  , Debian_menu["Debian_Office"] },
  { "Sound"   , Debian_menu["Debian_Sound"] },
  { "System"  , Debian_menu["Debian_System"] },
  { "Utility" , Debian_menu["Debian_Utility"] },
  { "Video"   , Debian_menu["Debian_Video"] },
  { "Viewers" , Debian_menu["Debian_Viewers"] }
}

