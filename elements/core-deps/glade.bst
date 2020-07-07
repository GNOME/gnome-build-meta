kind: autotools
sources:
- kind: tar
  url: gnome_downloads:glade/3.36/glade-3.36.0.tar.xz
  ref: 19b546b527cc46213ccfc8022d49ec57e618fe2caa9aa51db2d2862233ea6f08
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/WebKitGTK.bst
- sdk/gjs.bst
- sdk/gtk+-3.bst
- sdk/pygobject.bst
public:
  bst:
    split-rules:
      glade-libs:
      - '%{libdir}'
      - '%{libdir}/**'
      - '%{includedir}'
      - '%{includedir}/**'
      - '%{datadir}'
      - '%{datadir}/glade'
      - '%{datadir}/glade/**'
      - '%{debugdir}/dwz/%{element-name}/debug'
      - '%{debugdir}%{libdir}'
      - '%{debugdir}%{libdir}/**'
