kind: autotools
sources:
- kind: tar
  url: gnome_downloads:tepl/4.99/tepl-4.99.1.tar.xz
  ref: e627f591028d11b341334c51c75fe7868bcb2520b9dc763d35eed35f53d73169
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
