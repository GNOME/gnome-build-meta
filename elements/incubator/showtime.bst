kind: meson

sources:
- kind: git_repo
  url: gnome:Incubator/showtime.git
  track: main
  ref: cd0c9e8a24d378f1d84069b239897873b3ba424c

build-depends:
- incubator-deps/blueprint-compiler.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- incubator-deps/gst-plugin-gtk4.bst
- sdk/adwaita-icon-theme.bst
- sdk/pygobject.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-bad.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-base.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-good.bst
