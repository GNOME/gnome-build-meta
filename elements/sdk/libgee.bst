kind: autotools
sources:
- kind: tar
  url: gnome_downloads:libgee/0.20/libgee-0.20.5.tar.xz
  ref: 31863a8957d5a727f9067495cabf0a0889fa5d3d44626e54094331188d5c1518
build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:bootstrap-import.bst
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libgee-0.8.so'
