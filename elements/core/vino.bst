kind: autotools
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/vino.git
  track: master
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
