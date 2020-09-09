kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-music/3.36/gnome-music-3.36.5.tar.xz
  ref: e5b29d0771fcbba9a13adeffe5b8d1a2570dc965f3139ac9352f3ebad312d86c
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
