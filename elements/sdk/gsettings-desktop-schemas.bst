kind: meson

sources:
- kind: tar
  url: gnome_downloads:gsettings-desktop-schemas/47/gsettings-desktop-schemas-47.rc.tar.xz
  ref: 890d11b57b2464ebbfe6d273a2872659b714fdd1263b10454c6b3ba8099736b8
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
