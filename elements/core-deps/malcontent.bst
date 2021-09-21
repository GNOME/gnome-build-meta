kind: meson

sources:
- kind: tar
  url: https://tecnocode.co.uk/downloads/malcontent-0.10.1.tar.xz

  ref: c84f3a29bc1132b3b77412713b4f9a4ccae647cce95e6485e9af0938b486f9ba
build-depends:
- core-deps/glib-testing.bst
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/accountsservice.bst
- core-deps/flatpak.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:bootstrap-import.bst
