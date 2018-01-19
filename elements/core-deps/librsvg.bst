kind: autotools
sources:
- kind: git
  url: git_gnome_org:librsvg
  track: master
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
