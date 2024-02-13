kind: meson
sources:
- kind: tar
  url: gimp:babl/0.1/babl-0.1.108.tar.xz
  ref: 26defe9deaab7ac4d0e076cab49c2a0d6ebd0df0c31fd209925a5f07edee1475
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
