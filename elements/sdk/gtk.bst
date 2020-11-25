kind: meson

sources:
- kind: tar
  url: gnome_downloads:gtk/3.99/gtk-3.99.4.tar.xz
  ref: 8979cb1eb6ad2a496e00e94674d23f90aefae5d3f23b623ffda0b35d11ec85d0
build-depends:
- sdk-deps/sassc.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/at-spi2-atk.bst
- sdk/atk.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/graphene.bst
- sdk/gst-plugins-bad.bst
- sdk/gst-plugins-base.bst
- sdk/pango.bst
- freedesktop-sdk.bst:components/cups.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/hicolor-icon-theme.bst
- freedesktop-sdk.bst:components/libepoxy.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland-protocols.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dbroadway-backend=true

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libgtk-4.so'
