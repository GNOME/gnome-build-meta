kind: meson
sources:
- kind: git_tag
  url: gnome:gnome-system-monitor.git
  track: master
  ref: 42.0-36-g40d5fa0af434107b1fd1c1675a20ec5d4b7a5842
build-depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/gtkmm-3.bst
- core-deps/libgtop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:bootstrap-import.bst
