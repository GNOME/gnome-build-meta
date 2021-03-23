kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-music/40/gnome-music-40.0.tar.xz
  ref: 68e09b2cdb0115c30d130e14b2afc561dbf5248f50760e4519733326498358b6

build-depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/grilo-plugins.bst
- core-deps/grilo.bst
- core-deps/libdazzle.bst
- core-deps/libmediaart.bst
- core-deps/tracker-miners.bst
- core/gvfs-daemon.bst
- sdk/adwaita-icon-theme.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- sdk/pygobject.bst
- sdk/tracker.bst
- freedesktop-sdk.bst:bootstrap-import.bst
