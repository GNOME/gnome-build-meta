kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-music/3.37/gnome-music-3.37.3.tar.xz
  ref: 248bc8585963271a4d2ff7f249c9f792aaf0b4dfde1e94abb68c91501015cebe
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/grilo-plugins.bst
- core-deps/grilo.bst
- core-deps/libdazzle.bst
- core-deps/libmediaart.bst
- core-deps/tracker-miners.bst
- sdk/adwaita-icon-theme.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/gvfs.bst
- sdk/pygobject.bst
- sdk/tracker.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
