kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.46/vala-0.46.7.tar.xz
  ref: f302f9a396e5fdc7302d38ba166b9ffe7387fc62f9dce15d68e732ad693f3a95
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
