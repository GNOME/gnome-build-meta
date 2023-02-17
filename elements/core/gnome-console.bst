kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-console/44/gnome-console-44.beta.tar.xz
  ref: 92633f31f936fa4bc18e26fc25077830e12962fb72edd5c1fa75f5fe834b92ee
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
