kind: meson
sources:
- kind: tar
  url: gnome_downloads:libgweather/3.34/libgweather-3.34.0.tar.xz
  ref: 02245395d639d9749fe2d19b7e66b64a152b9509ab0e5aad92514538b9c6f1b9
build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/geocode-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:bootstrap-import.bst
