kind: autotools
sources:
- kind: tar
  url: gnome_downloads:libgtop/2.41/libgtop-2.41.2.tar.xz
  ref: d9026cd8a48d27cdffd332f8d60a92764b56424e522c420cd13a01f40daf92c3
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
