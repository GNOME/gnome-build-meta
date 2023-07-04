kind: autotools

sources:
- kind: tar
  url: gnome_downloads:gspell/1.12/gspell-1.12.1.tar.xz
  ref: 8ec44f32052e896fcdd4926eb814a326e39a5047e251eec7b9056fbd9444b0f1
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- sdk/enchant-2.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/icu.bst
- freedesktop-sdk.bst:bootstrap-import.bst
