kind: meson

sources:
- kind: tar
  url: gnome_downloads:devhelp/41/devhelp-41.rc.tar.xz
  ref: 3080b24612786484853f2cd8aa4ecd604b4f3d48003499f3eaa1624a8bd331ca
build-depends:
- sdk/appstream-glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/webkitgtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst
