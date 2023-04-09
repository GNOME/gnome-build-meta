kind: autotools
sources:
- kind: git_tag
  url: gnome:libgee.git
  track: main
  ref: 0.20.6-1-gb33a6627f4fc96938b6015e05849867c472160a8
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
