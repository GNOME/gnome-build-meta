kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-user-share/43/gnome-user-share-43.alpha.tar.xz
  ref: ed79811fbecf23aa34ac8531f63ef2e274b0ef7fc28f25e8ec8cf73b2f433e9a
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/systemd.bst
