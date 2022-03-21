kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.52/vala-0.52.11.tar.xz
  ref: 7c7c3cb3e5eb03c918544c6ab8130a2fc05a8cad0942836cdfded9aec5787077
build-depends:
- sdk/vala-tarball.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:components/git-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --enable-unversioned
    --disable-valadoc
  make: make bootstrap
