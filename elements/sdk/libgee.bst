kind: autotools
sources:
- kind: git_repo
  url: gnome:libgee.git
  track: main
  ref: 0.20.6-4-geb0334f67d04c5ae8575d0d0c911dcd4da6e7899
build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libgee-0.8.so'
