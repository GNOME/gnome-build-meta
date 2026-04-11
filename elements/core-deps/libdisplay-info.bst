kind: meson

sources:
- kind: git_repo
  url: freedesktop:emersion/libdisplay-info.git
  track: '*.*.*'
  ref: 0.3.0-0-g47a5590e9c4eb35d67651b8c05a55f1a48259329

build-depends:
- core-deps/hwdata.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{bindir}/di-edid-decode'
        - '%{libdir}/libdisplay-info.so'
