kind: autotools
sources:
- kind: tar
  url: gnome_downloads:glade/3.36/glade-3.36.0.tar.xz
build-depends:
- sdk/gtk-doc.bst
- core-deps/intltool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/WebKitGTK.bst
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
