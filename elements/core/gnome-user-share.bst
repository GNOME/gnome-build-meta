kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-user-share/3.34/gnome-user-share-3.34.0.tar.xz
  ref: 1d0c2a8eb4fcc4bff85c5edde9346ba6094e356921d2955f180d44b2d3642913
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core/gnome-bluetooth.bst
- core/nautilus.bst
- sdk/gtk+-3.bst
- sdk/libnotify.bst
- freedesktop-sdk.bst:bootstrap-import.bst
