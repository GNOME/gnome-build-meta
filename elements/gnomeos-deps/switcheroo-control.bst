kind: meson

sources:
- kind: git_repo
  url: freedesktop:hadess/switcheroo-control.git
  track: master
  ref: 2.6-18-gda06df4432022f57456c9d9f54c6c534e6131d81

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
