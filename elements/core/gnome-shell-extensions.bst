kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/45/gnome-shell-extensions-45.beta.tar.xz
  ref: 0b62144c1e7933b487e0bcb148b8d77250c50863c92bd2dff718c639d119104d
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
