kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-music/3.38/gnome-music-3.38.0.tar.xz
  ref: 370aa97ee4610d11b4b8f691e5c9ce30fa55665870bf6d5f2319658bdfacd705

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
