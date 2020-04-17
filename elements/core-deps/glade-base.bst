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
      - '%{libdir}/**'
      - '%{includedir}'
      - '%{includedir}/**'
      - '%{datadir}'
      - '%{datadir}/glade'
      - '%{datadir}/glade/**'
      - '%{debugdir}/dwz/%{element-name}/debug'
      - '%{debugdir}%{libdir}'
      - '%{debugdir}%{libdir}/**'
