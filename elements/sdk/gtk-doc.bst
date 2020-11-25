kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gtk-doc/1.33/gtk-doc-1.33.1.tar.xz
  ref: a5cfed2a0b73a09b796fff80ad6d8f040ab2b2655bdc941ac207ffe6d9c10f10
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/python-pygments.bst
- freedesktop-sdk.bst:components/docbook-xml.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
