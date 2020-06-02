kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.46/vala-0.46.10.tar.xz
  ref: d859cac88bf8bdfee1d78befeb82c62f61031a1e1380e4e92b7a619ef8535db4
depends:
- sdk/glib.bst
- filename: sdk/vala-tarball.bst
  type: build
- filename: components/bison.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: components/flex.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: components/git-minimal.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-unversioned --disable-valadoc
  make: make bootstrap
