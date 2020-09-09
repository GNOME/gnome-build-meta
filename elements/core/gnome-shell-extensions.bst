kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/3.36/gnome-shell-extensions-3.36.3.tar.xz
  ref: 2b674c4dc16f2ce46f07eea00a1754b243a19b469165a171cb1fbdbe376ee3b1
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
