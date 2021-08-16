kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-connections/41/gnome-connections-41.beta.tar.xz
  ref: 908e32ea71b763cb6c37f8fbd60b450d1f283fb8ace79c39f4ec102800f90cb3
build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/freerdp.bst
- core-deps/gtk-vnc.bst
- sdk/adwaita-icon-theme.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- freedesktop-sdk.bst:bootstrap-import.bst
