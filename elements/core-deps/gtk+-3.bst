kind: autotools
sources:
- url: https://download.gnome.org/sources/gtk+/3.22/gtk+-3.22.29.tar.xz
  kind: tar
  ref: a07d64b939fcc034a066b7723fdf9b24e92c9cfb6a8497593f3471fe56fbbbf8
depends:
- core-deps/atk.bst
- core-deps/at-spi2-atk.bst
- core-deps/gdk-pixbuf.bst
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/gtk-doc.bst
- core-deps/pango.bst
- core-deps/wayland-protocols.bst
- core-deps/wayland.bst
- base.bst
variables:
  conf-local: --enable-broadway-backend --enable-installed-tests --enable-x11-backend
    --enable-wayland-backend
public:
  bst:
    integration-commands:
    - |-
      for dir in %{prefix}/share/icons/*; do
        if test -f $dir/index.theme; then
          gtk-update-icon-cache --quiet $dir
        fi
      done
    - gtk-query-immodules-3.0 --update-cache
