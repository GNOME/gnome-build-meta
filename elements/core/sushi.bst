kind: meson

sources:
- kind: git_repo
  url: gnome:sushi.git
  track: master
  ref: 45.0-11-g6258dc70814638e99d3a604eda1cd7f60ed53ffa

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
