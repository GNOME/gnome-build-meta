kind: autotools
sources:
- kind: tar
  url: https://www.freedesktop.org/software/libmbim/libmbim-1.22.0.tar.xz
  ref: 5c0778eb1cd12c3604523134e55183f5147b0cae71150e875b583768f7aa1f38
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/libgudev.bst
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: --enable-more-warnings=no
