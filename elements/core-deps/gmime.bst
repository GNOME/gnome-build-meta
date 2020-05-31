kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gmime/3.2/gmime-3.2.7.tar.xz
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
