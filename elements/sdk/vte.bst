kind: meson
sources:
- kind: tar
  url: gnome_downloads:vte/0.58/vte-0.58.1.tar.xz
depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: sdk/vala.bst
  type: build
- filename: components/gnutls.bst
  junction: freedesktop-sdk.bst
- filename: components/pcre2.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
