kind: autotools
sources:
- kind: git_tag
  url: gnome:libgtop.git
  track: master
  ref: 2.41.1-1-g80cfde7c7fa570b8d47cf0ddffcabef6805a2049
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
