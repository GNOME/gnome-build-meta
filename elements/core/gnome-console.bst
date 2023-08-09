kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-console/44/gnome-console-44.4.tar.xz
  ref: b91f44e9a6c0433e96d997f395585206dabac62473993a3c07552fe5888e5a8d
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
