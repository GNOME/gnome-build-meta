kind: meson
sources:
- kind: git
  url: git_gnome_org:gnome-software
  track: master
depends:
- core-deps/PackageKit.bst
- sdk/glib.bst
- core-deps/gspell.bst
- sdk/gtk+-3.bst
- sdk/libgudev.bst
- sdk/liboauth.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- core-deps/valgrind.bst
- sdk/adwaita-icon-theme.bst
- core/gnome-desktop.bst
- sdk/gsettings-desktop-schemas.bst
- base.bst
variables:
  meson-local: -Denable-rpm=false -Denable-fwupd=false -Denable-flatpak=false
