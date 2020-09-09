kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gspell/1.8/gspell-1.8.4.tar.xz
  ref: cf4d16a716e813449bd631405dc1001ea89537b8cdae2b8abfb3999212bd43b4
build-depends:
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/enchant-2.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/iso-codes.bst
- freedesktop-sdk.bst:bootstrap-import.bst
