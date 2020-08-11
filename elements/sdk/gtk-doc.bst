kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gtk-doc/1.32/gtk-doc-1.32.tar.xz
  ref: de0ef034fb17cb21ab0c635ec730d19746bce52984a6706e7bbec6fb5e0b907c
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
