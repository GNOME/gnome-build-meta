kind: autotools
sources:
- kind: tar
  url: gnome_downloads:glade/3.22/glade-3.22.2.tar.xz
  ref: edefa6eb24b4d15bd52589121dc109bc08c286157c41288deb74dd9cc3f26a21
build-depends:
- sdk/gtk-doc.bst
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
