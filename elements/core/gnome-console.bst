kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-console/46/gnome-console-46.0.tar.xz
  ref: 1619ce701773b2c0c903718f54768c192ea5074514d55a1774a92c97231d6c3e
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
