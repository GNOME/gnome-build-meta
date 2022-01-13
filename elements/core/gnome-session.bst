kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-session/40/gnome-session-40.8.tar.xz
  ref: e650d765e685cee177c15ab64319fbf7648740f1f17c3db185b8ecda319c53a7

build-depends:
- freedesktop-sdk.bst:components/docbook-xsl.bst
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
