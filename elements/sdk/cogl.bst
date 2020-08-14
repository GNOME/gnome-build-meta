kind: autotools
sources:
- kind: tar
  url: gnome_downloads:cogl/1.22/cogl-1.22.8.tar.xz
  ref: a805b2b019184710ff53d0496f9f0ce6dcca420c141a0f4f6fcc02131581d759
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gst-plugins-base.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/pango.bst
- filename: components/gstreamer.bst
  junction: freedesktop-sdk.bst
- filename: components/wayland.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-lib-x11.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-lib-xcomposite.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-lib-xdamage.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-lib-xext.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-lib-xfixes.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-lib-xrandr.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-cogl-gst --disable-maintainer-flags --enable-xlib-egl-platform
    --enable-wayland-egl-platform --enable-wayland-egl-server
