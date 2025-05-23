kind: meson

sources:
- kind: git_repo
  url: gnome:showtime.git
  track: main
  ref: 48.1-110-gffc7b6e7e4d6dc89cc962b1b8e6283318535a851

build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- sdk/blueprint-compiler.bst

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
