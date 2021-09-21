kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-connections/41/gnome-connections-41.0.tar.xz
  ref: 339ff555a108d20b7ab0f3bf18299631601860e78efa978ba6ab9d18edc3b460
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
