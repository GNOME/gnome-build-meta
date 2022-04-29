kind: meson
sources:
- kind: tar
  url: https://download.gimp.org/pub/babl/0.1/babl-0.1.92.tar.xz
  ref: f667735028944b6375ad18f160a64ceb93f5c7dccaa9d8751de359777488a2c1
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
