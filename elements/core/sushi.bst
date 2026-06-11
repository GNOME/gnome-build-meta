kind: meson

sources:
- kind: git_repo
  url: gnome:sushi.git
  track: main
  ref: 50.0-130-gd367b6d5f538cd33e53743847a34e5be94e2b22b

build-depends:
- sdk/blueprint-compiler.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

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
