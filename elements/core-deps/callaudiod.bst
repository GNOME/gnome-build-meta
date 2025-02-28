kind: meson

sources:
- kind: tar
  url: gitlab:mobian1/callaudiod/-/archive/0.1.7/callaudiod-0.1.7.tar.bz2
  ref: 246a02a88c390479cb7ae10e18878a35494b4cda5500cc3516cfd5141d995c67

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/alsa-lib.bst
- freedesktop-sdk.bst:components/libpulse.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
