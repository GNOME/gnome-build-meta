kind: meson

sources:
- kind: git_tag
  url: gnome:sushi.git
  track: master
  ref: 44.2-2-g48cf74a435075aa6491b7b00fda2a5bc315fc922

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
