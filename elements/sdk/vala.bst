kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.50/vala-0.50.5.tar.xz
  ref: ab7d95ec2ea11a1a2c54e2aac53432b0787a8f09fbbf4e8ae9b4398935d8a016
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
