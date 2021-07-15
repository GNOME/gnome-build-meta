kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-autoar/0.3/gnome-autoar-0.3.3.tar.xz
  ref: 272400f73a375a7e88fdf1e12591bfb8f3f03edf01780cadcd74f70b613e5c04
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/libarchive.bst
- freedesktop-sdk.bst:bootstrap-import.bst
