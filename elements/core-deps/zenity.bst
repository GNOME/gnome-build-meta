kind: meson

sources:
- kind: tar
  url: gnome_downloads:zenity/4.2/zenity-4.2.2.tar.xz
  ref: 019186a996096ef4fc356e21577b5673f5baa3a29ac8e3d608b753371c18018d
build-depends:
- freedesktop-sdk.bst:components/help2man.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
