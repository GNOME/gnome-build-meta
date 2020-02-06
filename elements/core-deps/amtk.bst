kind: autotools
sources:
- kind: tar
  url: gnome_downloads:amtk/5.0/amtk-5.0.2.tar.xz
  ref: 71cc891fbaaa3d0cb87eeef9a2f7e1a2acab62f738d09ea922fb4b9ea2f84f86
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:bootstrap-import.bst
