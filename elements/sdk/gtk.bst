kind: meson

sources:
- kind: tar
  url: gnome_downloads:gtk/4.16/gtk-4.16.13.tar.xz
  ref: ddf3d9e12b848139a945d191d5ca56b78d0647f53b55b8bca5f9902b61624498
build-depends:
- sdk-deps/sassc.bst
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/pygobject.bst
- sdk/sysprof-minimal.bst
- freedesktop-sdk.bst:components/python3-docutils.bst
- freedesktop-sdk.bst:components/shaderc.bst
- freedesktop-sdk.bst:components/vulkan-headers.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/at-spi2-core.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/graphene.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-bad.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-base.bst
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
    -Ddocumentation=true
    -Dman-pages=true
    -Dsysprof=enabled

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{bindir}/gtk4-demo'
        - '%{bindir}/gtk4-demo'
        - '%{bindir}/gtk4-demo-application'
        - '%{bindir}/gtk4-node-editor'
        - '%{bindir}/gtk4-print-editor'
        - '%{bindir}/gtk4-widget-factory'
        - '%{datadir}/applications/org.gtk.Demo4.desktop'
        - '%{datadir}/applications/org.gtk.IconBrowser4.desktop'
        - '%{datadir}/applications/org.gtk.PrintEditor4.desktop'
        - '%{datadir}/applications/org.gtk.WidgetFactory4.desktop'
        - '%{datadir}/applications/org.gtk.gtk4.NodeEditor.desktop'
        - '%{datadir}/metainfo/org.gtk.Demo4.appdata.xml'
        - '%{datadir}/metainfo/org.gtk.IconBrowser4.appdata.xml'
        - '%{datadir}/metainfo/org.gtk.PrintEditor4.appdata.xml'
        - '%{datadir}/metainfo/org.gtk.WidgetFactory4.appdata.xml'
        - '%{datadir}/metainfo/org.gtk.gtk4.NodeEditor.appdata.xml'
        - '%{libdir}/libgtk-4.so'
