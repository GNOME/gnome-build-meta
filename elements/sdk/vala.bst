kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.55/vala-0.55.91.tar.xz
  ref: a9d695fe12269e8dcc372e053dcf66d69f0290d34ee8b8232809816bb86227bb
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
