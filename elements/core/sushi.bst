kind: meson

sources:
- kind: git_tag
  url: gnome:sushi.git
  track: master
  ref: 43.0-2-g10dd5e62924f13bdd69855ae2a599017914e7035

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
