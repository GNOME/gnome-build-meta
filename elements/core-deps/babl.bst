kind: meson

sources:
- kind: tar
  url: https://download.gimp.org/pub/babl/0.1/babl-0.1.80.tar.xz
  ref: f75ccc39af42585099bcb4731071dc5316b7542c5e232f63e278cd1ea2c04f8e
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
