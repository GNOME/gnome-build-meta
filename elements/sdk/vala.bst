kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.50/vala-0.50.0.tar.xz
  ref: 838adc50ac08881e06cf233fefd93740dec1530312cc1cf12c36d4e0e87d3071
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
