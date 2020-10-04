kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gtk-doc/1.33/gtk-doc-1.33.0.tar.xz
  ref: d5e3b3f837174d246fa8482455740627efec1e5210aa15d0c7989ca68f72bb51
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/python-pygments.bst
- freedesktop-sdk.bst:components/docbook-xml.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/itstools.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
