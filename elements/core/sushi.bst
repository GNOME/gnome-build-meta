kind: meson

sources:
- kind: tar
  url: gnome_downloads:sushi/41/sushi-41.2.tar.xz
  ref: b59fb42c9965c7361f76296dd2a34045ab655065ea4143de5ac8b2ca0caaea5e
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core/evince.bst
- sdk/gjs.bst
- sdk/gst-plugins-base.bst
- sdk/gtk+-3.bst
- sdk/gtksourceview-4.bst
- sdk/webkit2gtk-4.0.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:bootstrap-import.bst
