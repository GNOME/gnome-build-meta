kind: meson

sources:
- kind: tar
  url: gnome_downloads:gspell/1.13/gspell-1.13.2.tar.xz
  ref: 8195e5b4b9184849f93a6a42f781f0b3c6542451bef2eb818a8479e259f739c6
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/enchant-2.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/icu.bst
- freedesktop-sdk.bst:bootstrap-import.bst
