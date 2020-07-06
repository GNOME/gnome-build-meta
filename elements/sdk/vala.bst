kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.48/vala-0.48.7.tar.xz
  ref: 28de33e28da24500cc1675c3a6ced1301c9a6a5e6dd06193569001f9ce9a5c53
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
