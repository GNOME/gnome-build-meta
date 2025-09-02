kind: meson

sources:
- kind: git_repo
  url: freedesktop:hadess/switcheroo-control.git
  track: master
  ref: 3.0-0-g2adfa2dff85b9886ce0fddca6863fe9f2eaf54a0

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
