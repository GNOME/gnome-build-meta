kind: meson

sources:
- kind: git_repo
  url: freedesktop:emersion/libdisplay-info.git
  track: "*.*.*"
  ref: 0.1.1-0-g92b031749c0fe84ef5cdf895067b84a829920e25

build-depends:
- core-deps/hwdata.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{bindir}/di-edid-decode'
        - '%{libdir}/libdisplay-info.so'
