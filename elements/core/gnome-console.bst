kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-console/44/gnome-console-44.0.tar.xz
  ref: d1c1afd5ec8d2bdf84a3db029b04a2432ecc7bcd242c2a745fe9986a42898844
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
