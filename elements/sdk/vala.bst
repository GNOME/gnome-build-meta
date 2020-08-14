kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.46/vala-0.46.13.tar.xz
  ref: 7a4771f9a0284763db3a439e3cded0e616bb52135e0f3ecbc143e52ee026f434
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
