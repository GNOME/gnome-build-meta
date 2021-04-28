kind: meson
sources:
- kind: tar
  url: gnome_downloads:totem/3.38/totem-3.38.0.tar.xz
  ref: a829f2b5aa0435aa431816153193d5547fade9eb8d489f56be22afbe651c432f
build-depends:
- sdk/appstream-glib.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/clutter-gst.bst
- core-deps/clutter-gtk.bst
- core-deps/clutter.bst
- core-deps/grilo-plugins.bst
- core-deps/grilo.bst
- core-deps/libpeas.bst
- core-deps/totem-pl-parser.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gst-plugins-bad.bst
- sdk/gst-plugins-base.bst
- sdk/gst-plugins-good.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Denable-vala=no
