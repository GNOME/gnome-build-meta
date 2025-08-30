kind: meson
sources:
- kind: tar
  url: gnome_downloads:adwaita-icon-theme/49/adwaita-icon-theme-49.beta.tar.xz
  ref: acc6cd6c6947823ec00da5ad73387eecddc2766e5318c5033c12beeba7708684
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gtk.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
