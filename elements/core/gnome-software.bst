kind: meson
sources:
- kind: git
  url: git_gnome_org:gnome-software
  track: master
depends:
- core-deps/PackageKit.bst
- core-deps/gspell.bst
- core-deps/valgrind.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/libgudev.bst
- sdk/liboauth.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- base.bst
variables:
  meson-local: -Denable-rpm=false -Denable-fwupd=false -Denable-flatpak=false
