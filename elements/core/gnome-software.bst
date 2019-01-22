kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-software/3.30/gnome-software-3.30.6.tar.xz
  ref: 54630cdcde67cc571905a2ef5918fb7697f6aff80d937340440869f65c0c9002
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
