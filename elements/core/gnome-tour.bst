kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-tour/42/gnome-tour-42.beta.tar.xz
  ref: 73c36766f59caa79d85caba8a2f7aa6a2cdef357c14fa2591e05dc93b15bc7e2
build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/rust.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/adwaita-icon-theme.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
