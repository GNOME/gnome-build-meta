kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-software/3.32/gnome-software-3.32.4.tar.xz
depends:
- core-deps/PackageKit.bst
- core-deps/gspell.bst
- core-deps/gnome-online-accounts.bst
- core-deps/libgudev.bst
- core-deps/liboauth.bst
- core-deps/xmlb.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/libsecret.bst
- sdk/libsoup.bst
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Dfwupd=false -Dflatpak=false -Dvalgrind=false
