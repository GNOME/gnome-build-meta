kind: autotools
sources:
- kind: git_tag
  url: gnome:libgtop.git
  track: master
  ref: 2.40.0-95-gf7a00681a9c7ccb69dcbafe10151e1398a6db3d7
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/texinfo.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
environment:
  CC: gcc -std=c99
config:
  install-commands:
    (>):
    - rm "%{install-root}/usr/share/info/dir"
