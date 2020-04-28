kind: meson
sources:
- kind: tar
  url: gnome_downloads:libgweather/3.36/libgweather-3.36.0.tar.xz
  ref: d2ffeec01788d03d1bbf35113fc2f054c6c3600721088f827bcc31e5c603a32d
build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/geocode-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:bootstrap-import.bst
