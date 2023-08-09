kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.56/vala-0.56.10.tar.xz
  ref: a83ad3af4228f02f2510f8a3e4f3c4f9c36c8605b1261ce6d5d53be35ba1fc4d
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
