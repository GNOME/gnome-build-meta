kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.52/vala-0.52.4.tar.xz
  ref: ecde520e5160e659ee699f8b1cdc96065edbd44bbd08eb48ef5f2506751fdf31
- kind: patch
  path: files/vala/7fef9b0b3760b8c702344f9e7a78b24a3e5b42d9.patch
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
