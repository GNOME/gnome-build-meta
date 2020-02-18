kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-music/3.35/gnome-music-3.35.91.1.tar.xz
  ref: b91e0c6badbf230ab5d3f6b2a5264ff35819c473b2978c7dcad85418dc98bff4
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
