kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-connections/43/gnome-connections-43.beta.tar.xz
  ref: 933758f4d24c4338153d911caaebd64b59df6ed8ab7b09b959572b78ab0cda45
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
