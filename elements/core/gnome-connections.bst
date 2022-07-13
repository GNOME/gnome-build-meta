kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-connections/42/gnome-connections-42.1.2.tar.xz
  ref: d8e6e72741091d892dfc84281f625551d0568cd482d48db58a4edb8afa1377b6
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
