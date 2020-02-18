kind: meson
sources:
- kind: tar
  url: gnome_downloads:eog/3.34/eog-3.34.2.tar.xz
  ref: 6f2b0570541ced1cc31c4e8bbfe4b19e975d56d2a49052c5942a188cac35a9d3
depends:
- core-deps/exempi.bst
- core-deps/libpeas.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- filename: components/lcms.bst
  junction: freedesktop-sdk.bst
- filename: components/libexif.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
- filename: components/itstools.bst
  junction: freedesktop-sdk.bst
