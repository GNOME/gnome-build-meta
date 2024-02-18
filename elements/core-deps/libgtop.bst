kind: autotools
sources:
- kind: git_repo
  url: gnome:libgtop.git
  track: master
  ref: 2.41.3-0-g526a51698173535312f6cab1408ac9a225063c9d
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
