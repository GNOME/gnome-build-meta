kind: autotools
sources:
- url: https://download.gnome.org/sources/librsvg/2.42/librsvg-2.42.2.tar.xz
  kind: tar
  ref: 0c550a0bffef768a436286116c03d9f6cd3f97f5021c13e7f093b550fac12562
depends:
- core-deps/gdk-pixbuf.bst
- core-deps/glib.bst
- core-deps/gnome-common.bst
- core-deps/gobject-introspection.bst
- core-deps/libcroco.bst
- core-deps/pango.bst
- core-deps/vala.bst
- base.bst
- filename: base/crates.bst
  type: build
variables:
  conf-local: --enable-vala=yes
config:
  configure-commands:
    (<):
    - cp -a "%{datadir}/crates" "%{build-root}/cargo-crates"
    - rm rust/Cargo.lock || true
