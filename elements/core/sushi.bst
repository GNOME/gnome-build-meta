kind: meson

sources:
- kind: tar
  url: gnome_downloads:sushi/50/sushi-50.0.tar.xz
  ref: ab25177908d5ccc58568769a81eb9b4f32306786e6c73618193ebf61a127ee00
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/evince.bst
- core-deps/gtksourceview-4.bst
- sdk/gjs.bst
- sdk/gtk+-3.bst
- sdk/webkit2gtk-4.1.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-base.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
