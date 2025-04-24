kind: meson

sources:
- kind: git_repo
  url: gnome:Incubator/showtime.git
  track: main
  ref: 48.0-13-g904dff8935b47c8f26b5e7987813679f00e69c6e

build-depends:
- core-deps/blueprint-compiler.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/adwaita-icon-theme.bst
- sdk/gst-plugin-gtk4.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-bad.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-base.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-good.bst
