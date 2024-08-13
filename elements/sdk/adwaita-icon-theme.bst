kind: meson
sources:
- kind: tar
  url: gnome_downloads:adwaita-icon-theme/47/adwaita-icon-theme-47.beta.tar.xz
  ref: c045a69349e6e9dc143d3ac2af4b66d1f0b02c663e19a20fc19eaa608204aefb
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gtk.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
