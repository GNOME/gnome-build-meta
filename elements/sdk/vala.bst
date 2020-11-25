kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.50/vala-0.50.2.tar.xz
  ref: 2c0d5dc6d65d070f724063075424c403765ab7935c9e6fbcb84981b94d07ceda
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
