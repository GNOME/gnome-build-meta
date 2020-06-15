kind: autotools
sources:
- kind: tar
  url: gnome_downloads:amtk/5.1/amtk-5.1.1.tar.xz
  ref: f9656bdd4278aabfb8554f029049b9ffaf51b53faa463483a840365463355df1
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:bootstrap-import.bst
