kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-console/47/gnome-console-47.2.tar.xz
  ref: 363493b2a4ff5cbffa1c6a77278bc68b14f557e78c1f8963d6df9399663e74e5
build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- sdk/adobe-source-code-pro-fonts.bst
- sdk/adwaita-icon-theme.bst

depends:
- core-deps/libgtop.bst
- core-deps/vte.bst
- core/nautilus.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
