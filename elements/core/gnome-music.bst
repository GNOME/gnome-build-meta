kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-music.git
  track: master
  ref: 48.beta-14-gc649ea31b1f9887eb697cbf64e7a5d88744632e5

build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/grilo-plugins.bst
- core-deps/grilo.bst
- core-deps/libmediaart.bst
- core-deps/localsearch.bst
- core/gvfs-daemon.bst
- sdk/adwaita-icon-theme.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/pygobject.bst
- sdk/tinysparql.bst
- freedesktop-sdk.bst:bootstrap-import.bst
