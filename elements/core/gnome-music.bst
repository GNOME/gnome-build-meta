kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-music/3.35/gnome-music-3.35.91.1.tar.xz
  ref: c349e94a85024a92a6f39acebdb5a94a1db1da3a5aa6f2db46ce0d143e3ebfa4
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/grilo-plugins.bst
- core-deps/grilo.bst
- core-deps/libdazzle.bst
- core-deps/libmediaart.bst
- core-deps/tracker-miners.bst
- core-deps/tracker.bst
- sdk/adwaita-icon-theme.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/gvfs.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:components/itstools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
