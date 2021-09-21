kind: meson
sources:
- kind: tar
  url: gnome_downloads:sushi/41/sushi-41.0.tar.xz
  ref: 9b7525690ce436624efa0a605773493432cd0ef6b8f464982e8b844eda9898ee
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/libmusicbrainz.bst
- core/evince.bst
- sdk/gjs.bst
- sdk/gobject-introspection.bst
- sdk/gst-plugins-base.bst
- sdk/gtk+-3.bst
- sdk/gtksourceview-4.bst
- sdk/webkitgtk.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:bootstrap-import.bst
