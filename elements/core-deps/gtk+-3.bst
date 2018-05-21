kind: autotools
sources:
- kind: git
  url: git_gnome_org:gtk+
  track: gtk-3-22
depends:
- core-deps/atk.bst
- core-deps/at-spi2-atk.bst
- core-deps/gdk-pixbuf.bst
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/gtk-doc.bst
- core-deps/pango.bst
- core-deps/wayland.bst
- filename: desktop/cairo.bst
  junction: freedesktop-sdk.bst
- filename: desktop/libepoxy.bst
  junction: freedesktop-sdk.bst
- filename: desktop/libxkbcommon.bst
  junction: freedesktop-sdk.bst
- filename: desktop/mesa.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xinerama.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xi.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xcomposite.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xdamage.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
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
