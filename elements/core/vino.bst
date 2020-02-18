kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vino/3.22/vino-3.22.0.tar.xz
  ref: 2911c779b6a2c46e5bc8e5a0c94c2a4d5bd4a1ee7e35f2818702cb13d9d23bab
depends:
- core-deps/NetworkManager.bst
- filename: core-deps/intltool.bst
  type: build
- sdk/glib.bst
- filename: core-deps/gnome-common.bst
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
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
