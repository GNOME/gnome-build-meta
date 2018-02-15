kind: meson
sources:
- url: https://download.gnome.org/sources/gnome-software/3.27/gnome-software-3.27.4.tar.xz
  kind: tar
  ref: 218de65c22401567a37803155e43e6bc8ffcce25b8d239dd83185ee57e277272
depends:
- core-deps/PackageKit.bst
- core-deps/appstream-glib.bst
- core-deps/glib.bst
- core-deps/gspell.bst
- core-deps/gtk+-3.bst
- core-deps/libsecret.bst
- core-deps/libsoup.bst
- core-deps/meson.bst
- core/gnome-desktop.bst
- core/gsettings-desktop-schemas.bst
- base.bst
variables:
  meson-local: -Denable-rpm=false -Denable-fwupd=false -Denable-flatpak=false
