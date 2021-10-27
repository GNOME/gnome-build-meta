kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.50/vala-0.50.10.tar.xz
  ref: be721ff3f0181eab6d33eccacf281f66f308faa1e5e554f08fdf67159a459515
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
