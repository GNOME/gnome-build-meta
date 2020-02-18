kind: autotools
sources:
- kind: tar
  url: gnome_downloads:cogl/1.22/cogl-1.22.4.tar.xz
  ref: 5217bf94cbca3df63268a3b79d017725382b9e592b891d1e7dc6212590ce0de0
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
