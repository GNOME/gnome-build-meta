kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/44/gnome-shell-extensions-44.beta.tar.xz
  ref: 36c2c25e026c642306a5865dc303472779bc39ccd00f0871fe6f87344cb97a65
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core/gnome-menus.bst
- core/gnome-shell.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dextension_set=classic
