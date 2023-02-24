kind: meson

sources:
- kind: tar
  url: gnome_downloads:devhelp/43/devhelp-43.0.tar.xz
  ref: 63ceeefd05392e02044881ef1ecd724293553da5735b7efc082b2d13fe85dd04
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/webkit2gtk-4.1.bst
- freedesktop-sdk.bst:bootstrap-import.bst
