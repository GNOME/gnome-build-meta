kind: meson
sources:
- kind: git
  url: git_gnome_org:gnome-software
  track: master
depends:
- core-deps/PackageKit.bst
- core-deps/glib.bst
- core-deps/gspell.bst
- core-deps/gtk+-3.bst
- core-deps/libgudev.bst
- core-deps/liboauth.bst
- core-deps/libsecret.bst
- core-deps/libsoup.bst
- core-deps/valgrind.bst
- core/adwaita-icon-theme.bst
- core/gnome-desktop.bst
- core/gsettings-desktop-schemas.bst
- base.bst
variables:
  meson-local: -Denable-rpm=false -Denable-fwupd=false -Denable-flatpak=false
