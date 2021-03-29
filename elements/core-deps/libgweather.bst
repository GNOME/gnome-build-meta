kind: meson
sources:
- kind: tar
  url: gnome_downloads:libgweather/3.36/libgweather-3.36.2.tar.xz
  ref: ee1201a8fc25c14e940d3b26db49a34947c8aebf67dee01ee67fbcb06ecb37a0
build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/geocode-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:bootstrap-import.bst
