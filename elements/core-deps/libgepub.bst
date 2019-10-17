kind: meson
sources:
- kind: tar
  url: gnome_downloads:libgepub/0.6/libgepub-0.6.0.tar.xz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/WebKitGTK.bst
- sdk/glib.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:bootstrap-import.bst
