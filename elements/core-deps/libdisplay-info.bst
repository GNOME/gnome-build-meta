kind: meson

sources:
- kind: tar
  url: freedesktop_files:emersion/libdisplay-info/-/releases/0.1.1/downloads/libdisplay-info-0.1.1.tar.xz
  ref: 0d8731588e9f82a9cac96324a3d7c82e2ba5b1b5e006143fefe692c74069fb60

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
