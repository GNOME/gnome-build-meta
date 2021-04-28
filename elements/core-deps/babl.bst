kind: meson

sources:
- kind: tar
  url: https://download.gimp.org/pub/babl/0.1/babl-0.1.86.tar.xz

  ref: 0b3f595159ad1b216cd729c0504c3a5f6cf780c641f4dc63fc164f3c0382c8f0
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
