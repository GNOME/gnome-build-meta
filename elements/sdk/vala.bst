kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.54/vala-0.54.8.tar.xz
  ref: edfb3e79486a4bf48cebaea9291e57fc77da9322b6961e9549df6d973d04bc80
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
