kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-connections/44/gnome-connections-44.beta.tar.xz
  ref: a8ad890e06e0ecf25c94172bb06affd5f5fc6c53caafd19e24f87bc1e9b4dacc
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
