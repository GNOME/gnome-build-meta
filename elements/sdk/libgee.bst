kind: autotools
sources:
- kind: git_repo
  url: gnome:libgee.git
  track: main
  ref: 0.20.8-0-gd2e135e98718e37cae04599689fea8fb145b0b74
build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libgee-0.8.so'
