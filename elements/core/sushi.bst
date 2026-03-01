kind: meson

sources:
- kind: tar
  url: gnome_downloads:sushi/50/sushi-50.rc.1.tar.xz
  ref: 97a79f9c7e08b0b176026ed4c7a0435f0612c4c10da33d47e2bafab9c6292263
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
