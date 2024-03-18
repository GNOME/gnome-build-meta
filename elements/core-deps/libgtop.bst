kind: autotools
sources:
- kind: tar
  url: gnome_downloads:libgtop/2.41/libgtop-2.41.3.tar.xz
  ref: 775676df958e2ea2452f7568f28b2ea581063d312773dd5c0b7624c1b9b2da8c
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
