kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-console/47/gnome-console-47.2.1.tar.xz
  ref: 47b1193ef284b91fba81f2514d28b2b949ec3cfdb3a1c56033d3a6be247638d3
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
