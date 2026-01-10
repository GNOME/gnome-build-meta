kind: meson

sources:
- kind: tar
  url: gnome_downloads:gtk/3.24/gtk-3.24.51.tar.xz
  ref: 0013877c6bd23c2dbe42ad7c70a053d0e449be66736574e37867c49c5f905a4f
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- sdk/cantarell-fonts.bst

depends:
- sdk/at-spi2-core.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/glycin.bst
- sdk/pango.bst
- sdk/tinysparql.bst
- freedesktop-sdk.bst:components/cairo.bst
- freedesktop-sdk.bst:components/cups.bst
- freedesktop-sdk.bst:components/hicolor-icon-theme.bst
- freedesktop-sdk.bst:components/libepoxy.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/mesa-headers.bst
- freedesktop-sdk.bst:components/wayland-protocols.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:components/xorg-lib-xcomposite.bst
- freedesktop-sdk.bst:components/xorg-lib-xcursor.bst
- freedesktop-sdk.bst:components/xorg-lib-xdamage.bst
- freedesktop-sdk.bst:components/xorg-lib-xi.bst
- freedesktop-sdk.bst:components/xorg-lib-xinerama.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  local_flags: '-DG_ENABLE_DEBUG -DG_DISABLE_CAST_CHECKS'
  meson-local: >-
    -Dbroadway_backend=true
    -Dinstalled_tests=true
    -Dtests=false
    -Dx11_backend=true
    -Dwayland_backend=true
    -Dgtk_doc=true
    -Dman=true
    -Dintrospection=true
    -Dtracker3=true
    -Dprofiler=false

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
    split-rules:
      devel:
        (>):
        - '%{libdir}/libgailutil-3.so'
        - '%{libdir}/libgdk-3.so'
        - '%{libdir}/libgtk-3.so'

        # development utilities
        - '%{bindir}/gtk-builder-tool'

        # demos
        - '%{bindir}/gtk3-demo-application'
        - '%{bindir}/gtk3-demo'
        - '%{bindir}/gtk3-icon-browser'
        - '%{bindir}/gtk3-widget-factory'

        - '%{datadir}/applications/gtk3-demo.desktop'
        - '%{datadir}/applications/gtk3-icon-browser.desktop'
        - '%{datadir}/applications/gtk3-widget-factory.desktop'
        - '%{datadir}/icons/hicolor/*/apps/gtk3-demo-symbolic.symbolic.png'
        - '%{datadir}/icons/hicolor/*/apps/gtk3-demo.png'
        - '%{datadir}/icons/hicolor/*/apps/gtk3-widget-factory-symbolic.symbolic.png'
        - '%{datadir}/icons/hicolor/*/apps/gtk3-widget-factory-symbolic.symbolic.png'
        - '%{datadir}/icons/hicolor/*/apps/gtk3-widget-factory.png'

  cpe:
    product: gtk+
