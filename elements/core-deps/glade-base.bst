kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/glade.git
  track: master
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/WebKitGTK.bst
- sdk/gtk+-3.bst
- sdk/pygobject.bst
public:
  bst:
    split-rules:
      glade-libs:
      - '%{libdir}'
      - '%{libdir}/girepository-1.0'
      - '%{libdir}/girepository-1.0/Gladeui-*.typelib'
      - '%{libdir}/glade'
      - '%{libdir}/glade/*'
      - '%{libdir}/glade/modules'
      - '%{libdir}/glade/modules/libgladegtk.so*'
      - '%{libdir}/glade/modules/libgladepython.so*'
      - '%{libdir}/glade/modules/libgladewebkit2gtk.so*'
      - '%{libdir}/libgladeui-*.so*'
      - '%{libdir}/pkgconfig'
      - '%{libdir}/pkgconfig/**'
      - '%{includedir}'
      - '%{includedir}/**'
      - '%{datadir}'
      - '%{datadir}/glade'
      - '%{datadir}/glade/**'
      - '%{debugdir}/dwz/%{element-name}/debug'
      - '%{debugdir}%{libdir}/glade'
      - '%{debugdir}%{libdir}/glade/modules'
      - '%{debugdir}%{libdir}/glade/modules/libgladegtk.so*'
      - '%{debugdir}%{libdir}/glade/modules/libgladepython.so*'
      - '%{debugdir}%{libdir}/glade/modules/libgladewebkit2gtk.so*'
      - '%{debugdir}%{libdir}/*.so*'
