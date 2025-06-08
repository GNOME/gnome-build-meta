kind: meson

sources:
- kind: git_repo
  url: freedesktop:hadess/switcheroo-control.git
  track: master
  ref: 2.6-9-gd99d8c3ef9914d2f2fb5f4a2c945a4a4bff5eeeb

build-depends:
- sdk/gtk-doc.bst
- core-deps/python-dbusmock.bst
- core-deps/umockdev.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/python3.bst

variables:
  meson-local: >-
    -Dgtk_doc=true
    -Dtests=true
