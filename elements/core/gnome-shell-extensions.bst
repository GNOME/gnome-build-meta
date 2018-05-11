kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-shell-extensions/3.28/gnome-shell-extensions-3.28.1.tar.xz
  ref: e9c602338b529c8282e7d13e075703028ea384a1d946f3e8ce760e6c5b469058
depends:
- core-deps/librsvg.bst
- core-deps/meson.bst
- core/gnome-menus.bst
- core/gnome-shell.bst
- base.bst
variables:
  meson-local: -Dextension_set=classic
