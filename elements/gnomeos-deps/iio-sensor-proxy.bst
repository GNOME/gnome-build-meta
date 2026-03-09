kind: meson

sources:
- kind: git_repo
  url: freedesktop:hadess/iio-sensor-proxy.git
  track: '*.*'
  exclude:
  - '*RC*'
  ref: 3.9-0-g0085ddf8ecb173a1c5fcf2344aa40e561125354f

build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/systemd.bst

depends:
- sdk/glib.bst
- gnomeos-deps/libssc.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/polkit.bst
