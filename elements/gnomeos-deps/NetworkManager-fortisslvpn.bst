kind: autotools

sources:
- kind: tar
  url: gnome_downloads:NetworkManager-fortisslvpn/1.4/NetworkManager-fortisslvpn-1.4.0.tar.xz
  ref: b055e26349b516b23585798ab3ef57b436b014800e92a8ac732cfc8e76c5dafa

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- sdk/gtk+-3.bst
- core-deps/libnma.bst
- core-deps/NetworkManager.bst
- gnomeos-deps/openfortivpn.bst

variables:
  conf-local: >-
    --without-libnm-glib
