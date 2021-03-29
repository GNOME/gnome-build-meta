kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-music/3.38/gnome-music-3.38.3.tar.xz
  ref: 787e522f6552384453b2a1e742b63bc363e7da7a50eb39b2d9d0ccc037a60572

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
- sdk/pygobject.bst
- sdk/tracker.bst
- freedesktop-sdk.bst:bootstrap-import.bst
