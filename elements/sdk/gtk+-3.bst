kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gtk+
  track: gtk-3-22
depends:
- sdk/at-spi2-atk.bst
- sdk/atk.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/pango.bst
- sdk/wayland.bst
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
- filename: desktop/xorg-lib-xdamage.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xi.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xinerama.bst
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
