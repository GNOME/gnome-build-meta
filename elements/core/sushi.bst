kind: meson

sources:
- kind: git_repo
  url: gnome:sushi.git
  track: main
  ref: 51.0-67-g2129f26c344496c6b1ade9d90bcd6fd2cdc790aa

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
- sdk/webkitgtk.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-base.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
