kind: meson

sources:
- kind: git_tag
  url: gnome:sushi.git
  track: master
  ref: 43.0-6-g8dd2dda02797087032fe8c5f3c020f73494c4cea

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core/evince.bst
- sdk/gjs.bst
- sdk/gst-plugins-base.bst
- sdk/gtk+-3.bst
- sdk/gtksourceview-4.bst
- sdk/webkit2gtk-4.1.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:bootstrap-import.bst
