kind: meson

sources:
- kind: tar
  url: gnome_downloads:gtk/4.7/gtk-4.7.1.tar.xz
  ref: dbe0495d2933c461515bfed886b57f4d10b4e70a0c7ce6c933d8720b400d09b4
build-depends:
- sdk-deps/gi-docgen.bst
- sdk-deps/sassc.bst
- sdk/gobject-introspection.bst
- sdk/pygobject.bst
- sdk/sysprof-minimal.bst
- freedesktop-sdk.bst:components/vulkan-headers.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/at-spi2-core.bst
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
  local_flags: '-DG_ENABLE_DEBUG -DG_DISABLE_CAST_CHECKS'
  meson-local: >-
    -Dbroadway-backend=true
    -Dgtk_doc=true
    -Dmedia-ffmpeg=disabled
    -Dvulkan=disabled
    -Dsysprof=enabled

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
