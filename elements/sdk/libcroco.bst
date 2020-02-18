kind: autotools
sources:
- kind: tar
  url: gnome_downloads:libcroco/0.6/libcroco-0.6.13.tar.xz
  ref: 767ec234ae7aa684695b3a735548224888132e063f92db585759b422570621d4
depends:
- sdk/glib.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
