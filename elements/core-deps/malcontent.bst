kind: meson

sources:
- kind: tar
  url: https://tecnocode.co.uk/downloads/malcontent-0.4.0.tar.xz

build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/accountsservice.bst
- sdk/glib.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:bootstrap-import.bst
