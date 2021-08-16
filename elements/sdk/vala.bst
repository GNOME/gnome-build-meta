kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.53/vala-0.53.1.tar.xz
  ref: fa9c4dd85617076ea7f37149297db885c3346e3e9cf0a326a959899ef4555757
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
