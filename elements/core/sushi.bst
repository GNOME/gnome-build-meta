kind: meson
sources:
- kind: tar
  url: gnome_downloads:sushi/3.38/sushi-3.38.1.tar.xz
  ref: f3e6d10c815528d03a665fafd15c0719e017a813975b3af32076199e378888e9
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/clutter-gst.bst
- core-deps/clutter-gtk.bst
- core-deps/clutter.bst
- core-deps/libmusicbrainz.bst
- core/evince.bst
- sdk/gjs.bst
- sdk/gobject-introspection.bst
- sdk/gst-plugins-base.bst
- sdk/gtk+-3.bst
- sdk/gtksourceview.bst
- sdk/webkit2gtk-4.0.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:bootstrap-import.bst
