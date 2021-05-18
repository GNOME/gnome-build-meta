kind: meson

sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-sound-recorder.git
  track: master

build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- sdk/gst-plugins-base.bst
- sdk/gst-plugins-good.bst

depends:
- sdk/gjs.bst
- sdk/glib.bst
- sdk/gst-plugins-bad.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:bootstrap-import.bst
