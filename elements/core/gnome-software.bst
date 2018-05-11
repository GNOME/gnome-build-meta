kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-software/3.28/gnome-software-3.28.2.tar.xz
  ref: 7c001853c0da8761e702e2c7e44311523da9184b76aeb334797dcf6c41b929e8
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
