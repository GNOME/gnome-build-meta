kind: meson

sources:
- kind: git_repo
  url: freedesktop:hadess/switcheroo-control.git
  track: master
  ref: 2.6-11-g958e454ed1b0dd6ebf81700945898e8793a60aee

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
