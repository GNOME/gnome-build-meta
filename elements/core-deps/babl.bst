kind: meson

sources:
- kind: tar
  url: https://download.gimp.org/pub/babl/0.1/babl-0.1.82.tar.xz
  ref: c62d93d4ad6774cb8e3231bbbc7f2e61e551e7242d78640d757505ee1a9fadc5
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
