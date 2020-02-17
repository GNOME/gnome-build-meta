kind: meson
sources:
- kind: tar
  url: gnome_downloads:totem/3.34/totem-3.34.1.tar.xz
  ref: 6bf89ab096dfc564f260976e484165f09bd886434d184410d2f944bfba611a09
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/grilo-plugins.bst
- core-deps/grilo.bst
- core-deps/libpeas.bst
- core-deps/totem-pl-parser.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/clutter-gst.bst
- sdk/clutter-gtk.bst
- sdk/clutter.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gst-plugins-bad.bst
- sdk/gst-plugins-base.bst
- sdk/gst-plugins-good.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/itstools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: -Denable-vala=no
