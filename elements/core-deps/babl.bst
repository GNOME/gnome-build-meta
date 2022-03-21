kind: meson

sources:
- kind: tar
  url: https://download.gimp.org/pub/babl/0.1/babl-0.1.90.tar.xz

  ref: 6e2ebb636f37581588e3d02499b3d2f69f9ac73e34a262f42911d7f5906a9243
build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/git-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:components/lcms.bst
- freedesktop-sdk.bst:bootstrap-import.bst

(?):
- (arch == "i686" or arch == "ppc64le"):
    variables:
      optimize-debug: 'false'
