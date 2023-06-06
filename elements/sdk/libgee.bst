kind: autotools
sources:
- kind: git_repo
  url: gnome:libgee.git
  track: main
  ref: 0.20.6-2-g2f0bbe8987e5eb1390b23ac531c971b202c2ef77
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
