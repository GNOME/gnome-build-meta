kind: meson

sources:
- kind: git_repo
  url: gnome:sushi.git
  track: master
  ref: 50.0-35-gc5e7c087d7da914a47d84a1ee2d90edb9daafe2d

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core/papers.bst
- sdk/gjs.bst
- sdk/gtk.bst
- sdk/gtksourceview.bst
- sdk/libadwaita.bst
- sdk/webkitgtk-6.0.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-base.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
