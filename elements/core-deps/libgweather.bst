kind: meson
sources:
- kind: tar
  url: gnome_downloads:libgweather/40/libgweather-40.beta.tar.xz
  ref: 44bb574e6d42ec9abd7312ced063d11019005c5c954be102879678d11b300518
build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/geocode-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libsoup.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:bootstrap-import.bst
