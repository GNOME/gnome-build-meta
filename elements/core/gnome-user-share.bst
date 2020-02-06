kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-user-share/3.34/gnome-user-share-3.34.0.tar.xz
build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core/gnome-bluetooth.bst
- core/nautilus.bst
- sdk/gtk+-3.bst
- sdk/libnotify.bst
- freedesktop-sdk.bst:bootstrap-import.bst
