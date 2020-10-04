kind: autotools
sources:
- kind: tar
  url: gnome_downloads:amtk/5.2/amtk-5.2.0.tar.xz
  ref: 820545bb4cf87ecebc2c3638d6b6e58b8dbd60a419a9b43cf020124e5dad7078
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:bootstrap-import.bst
