kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-console/47/gnome-console-47.1.tar.xz
  ref: d3f600b45b51716691aee92870332e9c9a8ca89d553565f3131d9e28074725d0
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
