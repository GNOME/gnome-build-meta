kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/libsoup.git
  track: master
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: sdk/vala.bst
  type: build
- filename: components/libpsl.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
- filename: sdk/brotli.bst
variables:
  meson-local: >-
    -Dtls_check=false
    -Dvapi=true
    -Dgtk_doc=true
