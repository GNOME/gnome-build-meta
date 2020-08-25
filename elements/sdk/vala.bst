kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.49/vala-0.49.91.tar.xz
  ref: 5048da3e7737f7079404c755f017e402072adf4db8bfd4525f1be17349198e8b
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
