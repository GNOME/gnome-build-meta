kind: meson

sources:
- kind: tar
  url: gnome_downloads:sushi/50/sushi-50.0.tar.xz
  ref: ab25177908d5ccc58568769a81eb9b4f32306786e6c73618193ebf61a127ee00
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/blueprint-compiler.bst

depends:
- core/papers.bst
- sdk/gjs.bst
- sdk/glycin.bst
- sdk/gtk.bst
- sdk/gtksourceview.bst
- sdk/libadwaita.bst
- sdk/webkitgtk-6.0.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-base.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
