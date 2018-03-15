kind: autotools
# FIXME: https://gitlab.gnome.org/GNOME/gnome-build-meta/issues/24
sources:
- url: https://download.gnome.org/sources/librsvg/2.40/librsvg-2.40.20.tar.xz
  kind: tar
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
# config:
#   configure-commands:
#     (<):
#     - cp -a "%{datadir}/crates" "%{build-root}/cargo-crates"
#     - rm rust/Cargo.lock || true
