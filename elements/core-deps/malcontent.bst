kind: meson

sources:
- kind: tar
  url: https://tecnocode.co.uk/downloads/malcontent-0.9.0.tar.xz

build-depends:
- core-deps/glib-testing.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/accountsservice.bst
- core-deps/flatpak.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:bootstrap-import.bst
