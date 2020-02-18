kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-software/3.34/gnome-software-3.34.2.tar.xz
  ref: a7da2ec0ae958cc6b2151065a2d561a274547db83934f153751c6078e73711fe
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
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Dfwupd=false -Dflatpak=false -Dvalgrind=false
