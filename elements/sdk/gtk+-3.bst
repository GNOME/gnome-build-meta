kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gtk+/3.24/gtk+-3.24.11.tar.xz
depends:
- sdk/at-spi2-atk.bst
- sdk/atk.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/pango.bst
- filename: components/cairo.bst
  junction: freedesktop-sdk.bst
- filename: components/hicolor-icon-theme.bst
  junction: freedesktop-sdk.bst
- filename: components/libepoxy.bst
  junction: freedesktop-sdk.bst
- filename: components/libxkbcommon.bst
  junction: freedesktop-sdk.bst
- filename: components/mesa-headers.bst
  junction: freedesktop-sdk.bst
- filename: components/wayland.bst
  junction: freedesktop-sdk.bst
- filename: components/wayland-protocols.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-lib-xcomposite.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-lib-xcursor.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-lib-xdamage.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-lib-xi.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-lib-xinerama.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
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
  cpe:
    product: gtk+
