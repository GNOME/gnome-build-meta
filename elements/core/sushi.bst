kind: meson

sources:
- kind: tar
  url: gnome_downloads:sushi/51/sushi-51.rc.tar.xz
  ref: 400b41cdc2932e3eb4f5733211fc07d14ebb4f5e702a1679fdac8c22d97b31ec
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
