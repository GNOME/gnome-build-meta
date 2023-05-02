kind: meson

sources:
- kind: git_tag
  url: gnome:sushi.git
  track: master
  ref: 43.0-11-gf1ad337c995397b2c1c4d4644fb972d38b6a8fba

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/gtksourceview-4.bst
- core/evince.bst
- sdk/gjs.bst
- sdk/gst-plugins-base.bst
- sdk/gtk+-3.bst
- sdk/webkit2gtk-4.1.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:bootstrap-import.bst
