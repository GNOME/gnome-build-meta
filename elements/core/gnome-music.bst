kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-music/3.36/gnome-music-3.36.6.tar.xz
  ref: 2e72a3db89d22246fb50ae85e1bfdef343de7f90dd46f49f576d4835067e6caf
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
