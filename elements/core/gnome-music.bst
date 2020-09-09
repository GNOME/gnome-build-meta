kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-music/3.37/gnome-music-3.37.92.tar.xz
  ref: 8295439e9d216ff978baf3efb0cfe2d2e916500ddcc4dd3f669a4c80ccf5e803

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
