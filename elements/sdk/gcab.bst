kind: meson
sources:
- kind: tar
  url: gnome_downloads:gcab/1.5/gcab-1.5.tar.xz
  ref: 46bf7442491faa4148242b9ec2a0786a5f6e9effb1b0566e5290e8cc86f00f0c
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libgcab-1.0.so'
