kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-connections/41/gnome-connections-41.rc.tar.xz
  ref: 949e85540096a3f6c1cbd5107829c7121af88fb9493fe81f441c309bbaa3798b
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
