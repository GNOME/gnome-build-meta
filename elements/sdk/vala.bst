kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.46/vala-0.46.9.tar.xz
  ref: d16c7421b5008f95133a7c347fd8e709fa0f5382ffccb263a0337aa6387c9f9f
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
