kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vino/3.22/vino-3.22.0.tar.xz
depends:
- core-deps/NetworkManager.bst
- sdk/glib.bst
- filename: sdk/gnome-common.bst
  type: build
- sdk/gtk+-3.bst
- sdk/libnotify.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- filename: components/systemd.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-lib-ice.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-lib-sm.bst
  junction: freedesktop-sdk.bst
- filename: components/intltool.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
