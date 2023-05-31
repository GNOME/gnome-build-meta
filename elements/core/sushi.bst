kind: meson

sources:
- kind: tar
  url: gnome_downloads:sushi/44/sushi-44.2.tar.xz
  ref: 6c002fe0aea19027ba448b5aec94d5cd753c9752f996ee033152428738ea43e9
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core/evince.bst
- sdk/gjs.bst
- sdk/gst-plugins-base.bst
- sdk/gtk+-3.bst
- sdk/gtksourceview-4.bst
- sdk/webkit2gtk-4.1.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:bootstrap-import.bst
