kind: autotools
sources:
- kind: git_tag
  url: gnome:libgtop.git
  track: master
  ref: 2.40.0-91-g507809b648634c6251e9aeeb8ffae1d38c5be5f7
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
