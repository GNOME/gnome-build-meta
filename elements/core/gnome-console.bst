kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-console/47/gnome-console-47.beta.tar.xz
  ref: e01116f5f46b1c18e4bbef95e65db6f7972e940f53d409a26c1c614d6dfaceb1
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
