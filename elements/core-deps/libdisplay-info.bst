kind: meson

sources:
- kind: git_repo
  url: freedesktop:emersion/libdisplay-info.git
  track: '*.*.*'
  ref: 0.4.0-0-gc67a3e9bedb05ab61c7443704a1a107e76254595

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
