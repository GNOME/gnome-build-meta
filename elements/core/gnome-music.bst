kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-music.git
  track: master
  ref: 45.0-68-g0d561db858c92de0f4da5f9df2577569c302afa0

build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/grilo-plugins.bst
- core-deps/grilo.bst
- core-deps/libmediaart.bst
- core-deps/tracker-miners.bst
- core/gvfs-daemon.bst
- sdk/adwaita-icon-theme.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/pygobject.bst
- sdk/tracker.bst
- freedesktop-sdk.bst:bootstrap-import.bst
