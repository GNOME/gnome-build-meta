kind: compose
depends:
- filename: sdk/adwaita-icon-theme.bst
  type: build
- filename: sdk/atk.bst
  type: build
- filename: sdk/at-spi2-atk.bst
  type: build
- filename: sdk/at-spi2-core.bst
  type: build
- filename: sdk/brotli.bst
  type: build
- filename: sdk/cantarell-fonts.bst
  type: build
- filename: sdk/clutter.bst
  type: build
- filename: sdk/clutter-gst.bst
  type: build
- filename: sdk/clutter-gtk.bst
  type: build
- filename: sdk/cogl.bst
  type: build
- filename: sdk/dbus-glib.bst
  type: build
- filename: sdk/dconf.bst
  type: build
- filename: sdk/enchant-2.bst
  type: build
- filename: sdk/fribidi.bst
  type: build
- filename: sdk/gcab.bst
  type: build
- filename: sdk/gcr.bst
  type: build
- filename: sdk/gdk-pixbuf.bst
  type: build
- filename: sdk/gjs.bst
  type: build
- filename: sdk/glib.bst
  type: build
- filename: sdk/glib-networking.bst
  type: build
- filename: sdk/gnome-common.bst
  type: build
- filename: sdk/gnome-themes-extra.bst
  type: build
- filename: sdk/gobject-introspection.bst
  type: build
- filename: sdk/gsettings-desktop-schemas.bst
  type: build
- filename: sdk/gst-libav.bst
  type: build
- filename: sdk/gst-plugins-bad.bst
  type: build
- filename: sdk/gst-plugins-base.bst
  type: build
- filename: sdk/gst-plugins-good.bst
  type: build
- filename: sdk/gstreamer.bst
  type: build
- filename: sdk/gtk+-3.bst
  type: build
- filename: sdk/gvfs.bst
  type: build
- filename: sdk/json-glib.bst
  type: build
- filename: sdk/libcanberra.bst
  type: build
- filename: sdk/libcroco.bst
  type: build
- filename: sdk/libnotify.bst
  type: build
- filename: sdk/libpsl.bst
  type: build
- filename: sdk/librsvg.bst
  type: build
- filename: sdk/libsecret.bst
  type: build
- filename: sdk/libsoup.bst
  type: build
- filename: sdk/mozjs52.bst
  type: build
- filename: sdk/pango.bst
  type: build
- filename: sdk/pycairo.bst
  type: build
- filename: sdk/pygobject.bst
  type: build
- filename: sdk/vala.bst
  type: build
- filename: sdk/vte.bst
  type: build
- filename: sdk/wayland.bst
  type: build
- filename: sdk/WebKitGTK+.bst
  type: build
- filename: sdk/woff2.bst
  type: build
- filename: sdk/yelp.bst
  type: build
- filename: sdk/yelp-tools.bst
  type: build
- filename: sdk/yelp-xsl.bst
  type: build
- filename: base/man-db-generate.bst
  junction: base/freedesktop-sdk-junction.bst
  type: build
public:
  bst:
    split-rules:
      docs:
      - "%{datadir}/runtime/docs/**"
      locale:
      - "%{datadir}/runtime/locale/**"
