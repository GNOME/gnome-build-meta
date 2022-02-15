kind: autotools
sources:
- kind: tar
  url: freedesktop_software:libmbim/libmbim-1.26.2.tar.xz
  ref: 10c77bf5b5eb8c92ba80e9b519923ad9b898362bc8e1928e2bc9a17eeba649af
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --enable-more-warnings=no
