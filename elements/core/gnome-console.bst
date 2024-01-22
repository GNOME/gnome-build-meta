kind: meson

sources:
- kind: git_repo
  url: gnome:console.git
  track: main
  ref: 45.0-31-gc1912f223dc2b70e408a17dcdab7b4e38a3013db

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
