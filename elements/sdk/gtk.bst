kind: meson

sources:
- kind: tar
  url: gnome_downloads:gtk/4.4/gtk-4.4.0.tar.xz
  ref: e0a1508f441686c3a20dfec48af533b19a4b2e017c18eaee31dccdb7d292505b
build-depends:
- sdk-deps/sassc.bst
- sdk/sysprof-minimal.bst
- sdk/gobject-introspection.bst
- sdk-deps/gi-docgen.bst
- freedesktop-sdk.bst:components/vulkan-headers.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/at-spi2-atk.bst
- sdk/atk.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/graphene.bst
- sdk/gst-plugins-bad.bst
- sdk/gst-plugins-base.bst
- sdk/pango.bst
- freedesktop-sdk.bst:components/cups.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/hicolor-icon-theme.bst
- freedesktop-sdk.bst:components/libepoxy.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/vulkan-icd-loader.bst
- freedesktop-sdk.bst:components/wayland-protocols.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dbroadway-backend=true
    -Dgtk_doc=true
    -Dmedia-ffmpeg=disabled
    -Dprint-cloudprint=disabled
    -Dvulkan=disabled
    -Dprofiler=true

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libgtk-4.so'
        - '%{datadir}/applications/org.gtk.Demo4.desktop'
        - '%{datadir}/applications/org.gtk.IconBrowser4.desktop'
        - '%{datadir}/applications/org.gtk.PrintEditor4.desktop'
        - '%{datadir}/applications/org.gtk.WidgetFactory4.desktop'
