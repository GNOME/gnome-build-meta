kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-connections/45/gnome-connections-45.rc.tar.xz
  ref: 709078d637bec0013d1e601ad9e90a41fa051194fc5f9beec52c13e01a6d9d24
build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
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
