kind: meson

sources:
- kind: git_repo
  url: freedesktop:hadess/switcheroo-control.git
  track: master
  ref: 3.0-2-g78f973615284c4447c60a8ff6fbc70bd44c19f4f

build-depends:
- sdk/gtk-doc.bst
- core-deps/python-dbusmock.bst
- core-deps/umockdev.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:components/libdrm.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:extensions/mesa/libdrm.bst

variables:
  meson-local: >-
    -Dgtk_doc=true
    -Dtests=true

environment:
  PKG_CONFIG_PATH: '%{libdir}/GL/default/lib/pkgconfig'
