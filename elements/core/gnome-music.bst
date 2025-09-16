kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-music/48/gnome-music-48.2.tar.xz
  ref: 61238993f4bdda7950e555a29735a918711f269f7f3a0bedd3ab5d4e5fcc4622
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
