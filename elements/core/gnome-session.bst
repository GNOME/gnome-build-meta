kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-session.git
  track: main
  ref: 46.rc-2-g7ba370766a934c2daf3d12d37577f7bf46d38fd0

build-depends:
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:components/xmlto.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/upower.bst
- core/gnome-desktop.bst
- sdk/gtk+-3.bst
- sdk/json-glib.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/xorg-lib-ice.bst
- freedesktop-sdk.bst:components/xorg-lib-sm.bst
- freedesktop-sdk.bst:bootstrap-import.bst
