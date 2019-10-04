kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.44/vala-0.44.8.tar.xz
depends:
- sdk/glib.bst
- filename: sdk/vala-tarball.bst
  type: build
- filename: base/bison.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/git-minimal.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-unversioned --disable-valadoc
  make: make bootstrap
