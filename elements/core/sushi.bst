kind: meson

sources:
- kind: git_repo
  url: gnome:sushi.git
  track: master
  ref: 46.0-16-g2f6a49066fc6ee4b8ec9b01114a96526afc1a4d0

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
