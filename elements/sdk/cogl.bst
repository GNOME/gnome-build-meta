kind: autotools
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/cogl.git
  track: cogl-1.22
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gst-plugins-base.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/pango.bst
- filename: desktop/gstreamer.bst
  junction: freedesktop-sdk.bst
- filename: desktop/wayland.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xcomposite.bst
  junction: freedesktop-sdk.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-cogl-gst --disable-maintainer-flags --enable-xlib-egl-platform
    --enable-wayland-egl-platform --enable-wayland-egl-server --enable-kms-egl-platform
