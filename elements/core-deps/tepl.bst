kind: autotools
sources:
- kind: tar
  url: gnome_downloads:tepl/4.3/tepl-4.3.1.tar.xz
  ref: 406f2aa257098de00cdce01dfe30d6fd7dbd2af60c81b33fbec5ac24b4dec623
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
