kind: meson
sources:
- kind: tar
  url: gnome_downloads:libgepub/0.6/libgepub-0.6.0.tar.xz
depends:
- sdk/WebKitGTK.bst
- sdk/glib.bst
- sdk/libsoup.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
