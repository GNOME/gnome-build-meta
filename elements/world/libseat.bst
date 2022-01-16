kind: meson

sources:
- kind: tar
  url: github:kennylevinsen/seatd/archive/refs/tags/0.6.3.tar.gz

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dlibseat-logind=systemd
    -Dlibseat-seatd=disabled
    -Dman-pages=disabled
    -Dserver=disabled
