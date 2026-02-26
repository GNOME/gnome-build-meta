kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-system-monitor.git
  track: main
  ref: 50.beta.1-21-gb7e654d7cdc83192c4ce973aab2a2c52ec9d02e9

build-depends:
- core-deps/catch2.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

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
