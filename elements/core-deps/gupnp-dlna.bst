kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gupnp-dlna/0.10/gupnp-dlna-0.10.5.tar.xz
  ref: 123e368227c11d5c17fc1aa76cbdaffa345355eb51d172cd39fc74a5b468ff6a
depends:
- sdk/glib.bst
- sdk/gst-plugins-base.bst
- sdk/gst-plugins-good.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: sdk/vala.bst
  type: build
- filename: components/gstreamer.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
