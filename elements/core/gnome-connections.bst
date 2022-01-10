kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-connections/41/gnome-connections-41.2.tar.xz
  ref: 5ab99428f3ce9f8a837432b67b75dbc528b953a4293a8b56544df88346fe5713
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
- sdk/libsecret.bst
- freedesktop-sdk.bst:bootstrap-import.bst
