kind: autotools

sources:
- kind: tar
  url: gnome_downloads:gspell/1.10/gspell-1.10.0.tar.xz
  ref: 803bb884c0215d3fd22a85d7f30423aff88d9792f05a5199d8a489a2ffaae1da
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- sdk/enchant-2.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/icu.bst
- freedesktop-sdk.bst:bootstrap-import.bst
