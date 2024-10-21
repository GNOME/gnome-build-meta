kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/47/gnome-shell-extensions-47.1.tar.xz
  ref: e9438cc5d39f9875dfd04ea0abb51e5962eaad5c20274123243b1612098b3a85
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
