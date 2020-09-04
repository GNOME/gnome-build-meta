kind: meson

sources:
- kind: tar
  url: https://tecnocode.co.uk/downloads/malcontent-0.9.0.tar.xz

  ref: e973044c07237dfb4ec78afcde2a88136b13d4c5f87f556e36e4682067a852c7
build-depends:
- sdk/gtk-doc.bst
- core-deps/glib-testing.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/git-minimal.bst

depends:
- core-deps/accountsservice.bst
- core-deps/flatpak.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:bootstrap-import.bst
