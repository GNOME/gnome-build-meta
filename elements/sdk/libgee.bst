kind: autotools
sources:
- kind: git_repo
  url: gnome:libgee.git
  track: main
  ref: 0.20.6-3-gce8461ff6ea8ed79ce06b4241cb4fbb6d3d314f1
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
