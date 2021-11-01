kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-connections/41/gnome-connections-41.1.tar.xz
  ref: 89af5e58cd83ea62e5f9a6f031a74a3855085ba292f0ea85806408b3af834ee8
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
