kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-connections/44/gnome-connections-44.0.tar.xz
  ref: 34c7a6bbfec9a9acfa9c2d2dba4b251431cd71874f8f055c5ff26f26f4244199
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
