kind: autotools
sources:
- kind: tar
  url: tarballs_needing_help:libcanberra-0.30.tar.xz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/libpulse.bst
- freedesktop-sdk.bst:components/libtool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
runtime-depends:
- core-deps/xdg-sound-theme.bst
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libcanberra-gtk3.so'
        - '%{libdir}/libcanberra.so'
