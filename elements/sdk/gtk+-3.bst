kind: meson

sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gtk.git
  track: gtk-3-24
- kind: patch
  path: files/gtk3-werror.patch

build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- sdk/cantarell-fonts.bst

depends:
- sdk/at-spi2-atk.bst
- sdk/atk.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/pango.bst
- sdk/tracker.bst
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
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dbroadway_backend=true
    -Dinstalled_tests=true
    -Dtests=false
    -Dx11_backend=true
    -Dwayland-backend=true
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
  cpe:
    product: gtk+
