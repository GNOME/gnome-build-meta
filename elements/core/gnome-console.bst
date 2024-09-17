kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-console/47/gnome-console-47.0.tar.xz
  ref: 487ec0de0a24f12ef6f778e4aee98d744a9dcc921c9e7df98b2d9f410b00ef52
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
