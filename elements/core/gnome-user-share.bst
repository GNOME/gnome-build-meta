kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-user-share/47/gnome-user-share-47.alpha.tar.xz
  ref: f9d75d1b23ea76753f63747f06dd5ba2df9e62cfffd4ec39e3d91cb5e9e3f79b
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/systemd.bst
