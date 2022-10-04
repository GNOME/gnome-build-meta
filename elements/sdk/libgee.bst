kind: autotools
sources:
- kind: git_tag
  url: gnome:libgee.git
  track: main
  ref: 0.20.6-0-g7d332f82c750ba72a6c625f38e4bfd44b786a926
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
