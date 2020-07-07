kind: meson
sources:
- kind: tar
  url: gnome_downloads:sushi/3.34/sushi-3.34.0.tar.xz
  ref: a8a2330baaca40f539557b336375c67893afa232690705cbba7bbf55224799fd
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
