kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-session/3.34/gnome-session-3.34.2.tar.xz
  ref: 8bb77381650a03ae4be7260751363bd27da93f09bac1ddbc885f4ce44ebaf8e1
depends:
- core-deps/upower.bst
- core-deps/xmlto.bst
- core/gnome-desktop.bst
- sdk/gtk+-3.bst
- sdk/json-glib.bst
- filename: components/xorg-lib-ice.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-lib-sm.bst
  junction: freedesktop-sdk.bst
- filename: components/docbook-xsl.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
