kind: meson

sources:
- kind: tar
  url: https://download.gimp.org/pub/babl/0.1/babl-0.1.88.tar.xz
  ref: 4f0d7f4aaa0bb2e725f349adf7b351a957d9fb26d555d9895a7af816b4167039
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
