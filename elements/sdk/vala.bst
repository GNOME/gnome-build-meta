kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.52/vala-0.52.5.tar.xz
  ref: 84a1bb312b3e5dcae4b7b25c45598d375e2cb69233cefb59a15d2350c76bdd91
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
