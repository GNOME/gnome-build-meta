kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/libgepub/0.6/libgepub-0.6.0.tar.xz
  ref: c78a395cc1d9c57b4485958ed83ffb96ed442750cfafa7797dd6d986b9f7b399
depends:
- sdk/WebKitGTK+.bst
- sdk/glib.bst
- sdk/libsoup.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: |
    -Dintrospection=false
