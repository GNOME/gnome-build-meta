kind: meson
sources:
- kind: tar
  url: gnome_downloads:libgweather/40/libgweather-40.0.tar.xz
  ref: ca4e8f2a4baaa9fc6d75d8856adb57056ef1cd6e55c775ba878ae141b6276ee6
build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/geocode-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libsoup-2.4.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:bootstrap-import.bst
