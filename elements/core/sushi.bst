kind: meson

sources:
- kind: tar
  url: gnome_downloads:sushi/42/sushi-42.0.tar.xz
  ref: 45d8db7af45a79784e7a34588d149ea955c8be44bb82a36e896829405b7c8820
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core/evince.bst
- sdk/gjs.bst
- sdk/gst-plugins-base.bst
- sdk/gtk+-3.bst
- sdk/gtksourceview-4.bst
- sdk/webkit2gtk-4.0.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:bootstrap-import.bst
