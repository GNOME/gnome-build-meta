kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/libgepub/0.6/libgepub-0.6.0.tar.xz
  ref: c78a395cc1d9c57b4485958ed83ffb96ed442750cfafa7797dd6d986b9f7b399
depends:
- core-deps/WebKitGTK+.bst
- core-deps/glib.bst
- core-deps/libsoup.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
