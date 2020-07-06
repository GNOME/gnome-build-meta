kind: meson
sources:
- kind: tar
  url: gnome_downloads:libgweather/3.36/libgweather-3.36.1.tar.xz
  ref: de2709f0ee233b20116d5fa9861d406071798c4aa37830ca25f5ef2c0083e450
build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/geocode-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:bootstrap-import.bst
