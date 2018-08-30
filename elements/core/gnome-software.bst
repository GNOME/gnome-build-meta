kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-software/3.29/gnome-software-3.29.92.tar.xz
  ref: 02f81573708a74907e1c2f1aaadbbc1c2ad4d6e66c5fa36c3d0c76b815582116
depends:
- core-deps/PackageKit.bst
- core-deps/gspell.bst
- core-deps/libgudev.bst
- core-deps/liboauth.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Dfwupd=false -Dflatpak=false
