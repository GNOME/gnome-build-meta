kind: autotools
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-internet-radio-locator.git
  track: master
build-depends:
- sdk/gtk-doc.bst
depends:
- core-deps/clutter-gtk.bst
- core-deps/clutter.bst
- core-deps/geocode-glib.bst
- core-deps/libchamplain.bst
- core/gnome-maps.bst
- sdk/glib.bst
- sdk/gst-plugins-bad.bst
- sdk/gst-plugins-base.bst
- sdk/gst-plugins-good.bst
- sdk/gtk+-3.bst
- sdk/pango.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:bootstrap-import.bst
