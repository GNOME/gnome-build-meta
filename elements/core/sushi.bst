kind: meson

sources:
- kind: git_repo
  url: gnome:sushi.git
  track: main
  ref: 50.0-36-ge80c764d83eb855e2a37cf631f25c0a18d911158

build-depends:
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
