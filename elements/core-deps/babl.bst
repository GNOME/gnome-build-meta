kind: meson
sources:
- kind: tar
  url: gimp:babl/0.1/babl-0.1.96.tar.xz
  ref: 33673fe459a983f411245a49f81fd7f1966af1ea8eca9b095a940c542b8545f6
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
