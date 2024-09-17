kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-user-share/47/gnome-user-share-47.0.tar.xz
  ref: c842f352fe7f0f0ea18ff9186ba9482b6c90d2f6b365abb5b11d68c906dba490
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/systemd.bst
