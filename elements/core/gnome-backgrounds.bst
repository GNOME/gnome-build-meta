kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-backgrounds/40/gnome-backgrounds-40.1.tar.xz
  ref: 60df8a0da301ce425b7043d42ae32ec4011ff08f18e0fc62f29401305da3a70e
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
