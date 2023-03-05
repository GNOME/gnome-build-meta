kind: meson
sources:
- kind: tar
  url: gimp:babl/0.1/babl-0.1.102.tar.xz
  ref: a88bb28506575f95158c8c89df6e23686e50c8b9fea412bf49fe8b80002d84f0
build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:components/lcms.bst
- freedesktop-sdk.bst:bootstrap-import.bst

(?):
- (arch == "i686" or arch == "ppc64le"):
    variables:
      optimize-debug: 'false'
