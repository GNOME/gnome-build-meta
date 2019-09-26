kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.36/vala-0.36.18.tar.xz
build-depends:
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-aux: build-aux
