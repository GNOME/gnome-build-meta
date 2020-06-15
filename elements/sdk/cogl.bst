kind: autotools
sources:
- kind: tar
  url: gnome_downloads:cogl/1.22/cogl-1.22.8.tar.xz
  ref: a805b2b019184710ff53d0496f9f0ce6dcca420c141a0f4f6fcc02131581d759
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gst-plugins-base.bst
- sdk/pango.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:components/xorg-lib-x11.bst
- freedesktop-sdk.bst:components/xorg-lib-xcomposite.bst
- freedesktop-sdk.bst:components/xorg-lib-xdamage.bst
- freedesktop-sdk.bst:components/xorg-lib-xext.bst
- freedesktop-sdk.bst:components/xorg-lib-xfixes.bst
- freedesktop-sdk.bst:components/xorg-lib-xrandr.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --disable-cogl-gst
    --disable-maintainer-flags
    --enable-xlib-egl-platform
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
