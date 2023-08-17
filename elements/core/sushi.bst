kind: meson

sources:
- kind: git_tag
  url: gnome:sushi.git
  track: master
  ref: 45.alpha.2-3-ge9739d5ec5a9edbb0f62ee1ebda46ec3ed20bda6

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/gtksourceview-4.bst
- core/evince.bst
- sdk/gjs.bst
- sdk/gtk+-3.bst
- sdk/webkit2gtk-4.1.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-base.bst
- freedesktop-sdk.bst:bootstrap-import.bst
