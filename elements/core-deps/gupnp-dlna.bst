kind: meson

sources:
- kind: tar
  url: gnome_downloads:gupnp-dlna/0.12/gupnp-dlna-0.12.0.tar.xz
  ref: 3d53b96f85bc5628d33e367ec9bf2adb38ef2b34d7ad0434a6ba0cf4ad9048e6
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gst-plugins-base.bst
- sdk/gst-plugins-good.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:bootstrap-import.bst
