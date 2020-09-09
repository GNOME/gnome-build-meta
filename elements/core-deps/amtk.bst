kind: autotools
sources:
- kind: tar
  url: gnome_downloads:amtk/5.1/amtk-5.1.2.tar.xz
  ref: d99a52bc7f6f88619979958571468cb76967ed0ab3e7b9bfaa3daca44c54de15
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:bootstrap-import.bst
