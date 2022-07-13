kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-tour/42/gnome-tour-42.0.tar.xz
  ref: fcf1ac689057da86596970ec3da8355521c0a72e95063eb059d5fee4dea82f4f
build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/rust.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/adwaita-icon-theme.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
