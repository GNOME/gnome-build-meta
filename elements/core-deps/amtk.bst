kind: autotools
sources:
- kind: tar
  url: gnome_downloads:amtk/5.0/amtk-5.0.2.tar.xz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:bootstrap-import.bst
