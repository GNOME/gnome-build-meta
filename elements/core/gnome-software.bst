kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-software/3.30/gnome-software-3.30.0.tar.xz
  ref: 400c4ef7b3734cd54b290dede7a1278b74aa965fea4d43ef6da26c8c9268a977
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
