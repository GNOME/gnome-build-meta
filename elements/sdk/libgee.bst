kind: autotools
sources:
- kind: tar
  url: gnome_downloads:libgee/0.20/libgee-0.20.6.tar.xz
  ref: 1bf834f5e10d60cc6124d74ed3c1dd38da646787fbf7872220b8b4068e476d4d
build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
config:
  configure-commands:
    (>):
      - make distclean
      - "%{configure}"
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libgee-0.8.so'
