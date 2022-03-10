kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-connections/42/gnome-connections-42.beta.tar.xz
  ref: b842f21c3d57730acffbb5cf995939a595958e0d373c2f5f7b6b50e42d33d609
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
