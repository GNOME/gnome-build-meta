kind: meson

sources:
- kind: git_repo
  url: freedesktop:hadess/iio-sensor-proxy.git
  track: '*.*'
  exclude:
  - '*RC*'
  ref: 3.8-0-g7fec9326aa785127d0ebaea53ba2e89d37d7bca0
- kind: patch_queue
  path: patches/iio-sensor-proxy

build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/systemd.bst

depends:
- sdk/glib.bst
- gnomeos-deps/libssc.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/polkit.bst
