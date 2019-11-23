kind: autotools
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/cogl.git
  track: cogl-1.22
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- sdk/gst-plugins-base.bst
- sdk/pango.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --disable-glx
    --disable-cogl-gst
    --disable-maintainer-flags
    --disable-xlib-egl-platform
    --enable-wayland-egl-platform
    --enable-wayland-egl-server
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libcogl-pango.so'
        - '%{libdir}/libcogl-path.so'
        - '%{libdir}/libcogl.so'
