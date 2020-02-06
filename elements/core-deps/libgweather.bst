kind: meson
sources:
- kind: tar
  url: gnome_downloads:libgweather/3.34/libgweather-3.34.0.tar.xz
build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/geocode-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:bootstrap-import.bst
