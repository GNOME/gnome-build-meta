kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-backgrounds/40/gnome-backgrounds-40.rc.tar.xz
  ref: 8d28dacbf17e8fc5cad030ce027398befbfb2c0034ae14a8e6a7af3336fda679
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
