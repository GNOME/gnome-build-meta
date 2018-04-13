kind: meson
sources:
- url: https://download.gnome.org/sources/gnome-software/3.28/gnome-software-3.28.1.tar.xz
  kind: tar
  ref: 7ad1bf414ef0839edeb947c22df08e9982671cee973f8f62c208bcb19eff4748
depends:
- core-deps/PackageKit.bst
- core-deps/appstream-glib.bst
- core-deps/glib.bst
- core-deps/gspell.bst
- core-deps/gtk+-3.bst
- core-deps/libsecret.bst
- core-deps/libsoup.bst
- core-deps/meson.bst
- core/adwaita-icon-theme.bst
- core/gnome-desktop.bst
- core/gsettings-desktop-schemas.bst
- base.bst
variables:
  meson-local: -Denable-rpm=false -Denable-fwupd=false -Denable-flatpak=false
