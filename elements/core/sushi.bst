kind: meson

sources:
- kind: tar
  url: gnome_downloads:sushi/46/sushi-46.0.tar.xz
  ref: 96085baaa430ab2142c606aab5c47e2fbb2fd3eb70a352137e65c59a58a0f2c6
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
