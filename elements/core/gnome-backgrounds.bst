kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-backgrounds.git
  track: main
  ref: 48.0-10-g0b50caa27811b884adc94f465fa0e51eaeec132f

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- sdk/gdk-pixbuf.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:components/jpeg.bst
- freedesktop-sdk.bst:components/libjxl.bst
- freedesktop-sdk.bst:components/libpng.bst
- freedesktop-sdk.bst:components/webp-pixbuf-loader.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
