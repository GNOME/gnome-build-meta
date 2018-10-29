kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-software/3.30/gnome-software-3.30.5.tar.xz
  ref: 8d348d37c6b7a9e61255863f8442beec89f01c08b3136b888cd8d97a9a960bce
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
