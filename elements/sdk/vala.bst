kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.46/vala-0.46.6.tar.xz
  ref: ef31649932872f094971d46453b21c60a41661670f98afa334062425b4aec47a
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
