kind: autotools
sources:
- kind: git_tag
  url: gnome:libgtop.git
  track: master
  ref: 2.41.1-3-g079b9e17c50407d6f1e2b9f9189693a4ba357357
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
