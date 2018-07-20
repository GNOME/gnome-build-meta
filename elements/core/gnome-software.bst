kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-software/3.29/gnome-software-3.29.1.tar.xz
  ref: ad642749dc46b666ae16eb87691d20e7592acdc42ce5b521a0b9f43e0df31a05
depends:
- core-deps/PackageKit.bst
- core-deps/appstream-glib.bst
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
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Dfwupd=false -Dflatpak=false
