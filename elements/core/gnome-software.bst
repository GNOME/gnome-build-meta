kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-software/3.30/gnome-software-3.30.5.tar.xz
  ref: 22a183f7af2ee77f243a00eebea0e32ab54cfe0abb3597e7d7a8cf8511105d34
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
