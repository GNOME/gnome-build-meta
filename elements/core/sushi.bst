kind: meson

sources:
- kind: git_repo
  url: gnome:sushi.git
  track: master
  ref: 46.0-14-g203cb4ca1606bd21761b0be830114c9d89a6d462

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/gtksourceview-4.bst
- core/evince.bst
- sdk/gjs.bst
- sdk/gtk+-3.bst
- sdk/webkit2gtk-4.1.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-base.bst
- freedesktop-sdk.bst:bootstrap-import.bst
