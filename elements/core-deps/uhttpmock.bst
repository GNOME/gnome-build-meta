kind: autotools
sources:
- kind: tar
  url: https://tecnocode.co.uk/downloads/uhttpmock/uhttpmock-0.5.1.tar.xz
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:bootstrap-import.bst
