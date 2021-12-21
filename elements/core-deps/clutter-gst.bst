kind: autotools
sources:
- kind: tar
  url: tar_download_gnome_org:sources/clutter-gst/3.0/clutter-gst-3.0.27.tar.xz
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/clutter.bst
- core-deps/cogl.bst
- sdk/gdk-pixbuf.bst
- sdk/gst-plugins-base.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:bootstrap-import.bst
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libclutter-gst-3.0.so'
