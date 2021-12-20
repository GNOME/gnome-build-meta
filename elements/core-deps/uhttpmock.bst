kind: autotools
sources:
- kind: tar
  url: https://tecnocode.co.uk/downloads/uhttpmock/uhttpmock-0.5.3.tar.xz
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- sdk/libsoup-2.4.bst
- freedesktop-sdk.bst:bootstrap-import.bst
