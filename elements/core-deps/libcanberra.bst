kind: autotools

sources:
- kind: anitya
  project-id: 13298
  url: 0pointer:lennart/projects/libcanberra/libcanberra-{version}.tar.xz
  ref:
    version: 0.30
    sha256sum: c2b671e67e0c288a69fc33dc1b6f1b534d07882c2aceed37004bf48c601afa72
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/autotools.bst

depends:
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/libpulse.bst
- freedesktop-sdk.bst:components/libtool.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

runtime-depends:
- core-deps/xdg-sound-theme.bst

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libcanberra-gtk3.so'
        - '%{libdir}/libcanberra.so'
