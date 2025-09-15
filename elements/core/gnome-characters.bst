kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-characters/49/gnome-characters-49.0.tar.xz
  ref: 1b6e548a82e26aa4ec9afe409d69a25709362c037fa5c533186d6a1db29af6e3
build-depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/adwaita-icon-theme.bst
- sdk/gjs.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
