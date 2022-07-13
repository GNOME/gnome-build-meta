kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-console/42/gnome-console-42.2.tar.xz
  ref: 7d26e6c18744c575a787293263f60ceff630107098e9e58a7765b00ac7437049
build-depends:
- sdk-deps/sassc.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- sdk/adobe-source-code-pro-fonts.bst
- sdk/adwaita-icon-theme.bst

depends:
- core-deps/libgtop.bst
- core-deps/vte.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  # disable until ported to gtk4
  meson-local: -Dnautilus=disabled
