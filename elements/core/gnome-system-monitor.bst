kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-system-monitor.git
  track: main
  ref: 51.0-5-g3c8456625310cb95fc564e6bab563e0dbac5c7e9

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- core-deps/catch2.bst
- freedesktop-sdk.bst:components/itstool.bst

runtime-depends:
- sdk/adwaita-icon-theme.bst

depends:
- core-deps/glibmm.bst
- core-deps/gtkmm.bst
- core-deps/libgtop.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
