kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.47/vala-0.47.91.tar.xz
  ref: 14090fcd17867d7f961245849b3358df3fc8879f2c7ed620c46ab56d98d0790a
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
  conf-local: --enable-unversioned --disable-valadoc
  make: make bootstrap
