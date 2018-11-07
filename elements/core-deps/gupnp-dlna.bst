kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gupnp-dlna/0.10/gupnp-dlna-0.10.5.tar.xz
  ref: 123e368227c11d5c17fc1aa76cbdaffa345355eb51d172cd39fc74a5b468ff6a
depends:
- sdk/glib.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: sdk/vala.bst
  type: build
- filename: desktop/gstreamer-plugins-base.bst
  junction: freedesktop-sdk.bst
- filename: desktop/gstreamer-plugins-good.bst
  junction: freedesktop-sdk.bst
- filename: desktop/gstreamer.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
