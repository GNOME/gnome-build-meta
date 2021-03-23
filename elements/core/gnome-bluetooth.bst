kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-bluetooth/3.34/gnome-bluetooth-3.34.4.tar.xz
  ref: 357d02b488942d4cea310fb44ae08ade4f31bed289f767fe0ec96adcb84ac272
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/libcanberra.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libnotify.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:bootstrap-import.bst
