kind: meson
sources:
- kind: tar
  url: gnome_downloads:sushi/3.38/sushi-3.38.0.tar.xz
  ref: 5040029f7ffb6fd5491ca2db94202cca2450c3a56afba515d9d53713d2c4986e
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/libmusicbrainz.bst
- core/evince.bst
- sdk/WebKitGTK.bst
- sdk/clutter-gst.bst
- sdk/clutter-gtk.bst
- sdk/clutter.bst
- sdk/gjs.bst
- sdk/gobject-introspection.bst
- sdk/gst-plugins-base.bst
- sdk/gtk+-3.bst
- sdk/gtksourceview.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:bootstrap-import.bst
