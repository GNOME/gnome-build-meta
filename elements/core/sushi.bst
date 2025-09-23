kind: meson

sources:
- kind: git_repo
  url: gnome:sushi.git
  track: master
  ref: 46.0-17-gdc7af75976c33de1d739f31c37c8e0fd7f5f8d83

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
