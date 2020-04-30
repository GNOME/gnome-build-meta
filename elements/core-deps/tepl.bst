kind: autotools
sources:
- kind: tar
  url: gnome_downloads:tepl/4.4/tepl-4.4.0.tar.xz
  ref: e6f6673a8a27e8f280725db8fbacec79b20676ae0558755239d15a9808faa256
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/amtk.bst
- core-deps/uchardet.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/gtksourceview.bst
- freedesktop-sdk.bst:components/libxml2.bst
- freedesktop-sdk.bst:bootstrap-import.bst
