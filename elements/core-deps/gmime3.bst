kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gmime/3.2/gmime-3.2.6.tar.xz
  ref: fb7556501f85c3bf3e65fdd82697cbc4fa4b55dccd33ad14239ce0197e78ba59
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
