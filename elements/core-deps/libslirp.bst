kind: meson

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst

sources:
- kind: tar
  url: https://elmarco.fedorapeople.org/libslirp-4.3.1.tar.xz
