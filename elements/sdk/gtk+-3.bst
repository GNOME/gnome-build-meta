kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gtk+/3.24/gtk+-3.24.1.tar.xz
  ref: 68387be307b99aadcdc653561d7a2a7f0113b93561fb18ded7075ec9ced5b02f
depends:
- sdk/at-spi2-atk.bst
- sdk/atk.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/pango.bst
- filename: desktop/wayland.bst
  junction: freedesktop-sdk.bst
- filename: desktop/cairo.bst
  junction: freedesktop-sdk.bst
- filename: desktop/libepoxy.bst
  junction: freedesktop-sdk.bst
- filename: desktop/libxkbcommon.bst
  junction: freedesktop-sdk.bst
- filename: desktop/mesa.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xcomposite.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xcursor.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xdamage.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xi.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xinerama.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
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
