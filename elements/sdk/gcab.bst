kind: meson
sources:
- kind: git_repo
  url: gnome:gcab.git
  track: master
  ref: v1.6-7-gb32a467f18e77c0589592f5a59f88d1f124deb67
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libgcab-1.0.so'
