kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-connections/44/gnome-connections-44.rc.tar.xz
  ref: 7e750ff603f94846e8ed1c8f7337a658e862c787a9cd42376f405fdaeb50b4f3
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
