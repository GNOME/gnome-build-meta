kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.54/vala-0.54.0.tar.xz
  ref: 62ccb213083a7844793c53a9b66e6c3788ab614803a9a6ff1fd04cd87a67267b
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
