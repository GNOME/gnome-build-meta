kind: meson

sources:
- kind: git_repo
  url: gnome:libnotify.git
  track: master
  ref: 0.8.3-8-g77fc18c37d2f096150f23151ded4df9ced8cc0b1

build-depends:
- sdk/gobject-introspection.bst
- sdk-deps/gi-docgen.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Ddocbook_docs=disabled
    -Dman=false

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libnotify.so'
