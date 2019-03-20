kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-session.git
  track: master
depends:
- core-deps/upower.bst
- core-deps/xmlto.bst
- core/gnome-desktop.bst
- sdk/gtk+-3.bst
- sdk/json-glib.bst
- filename: desktop/xorg-lib-ice.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-sm.bst
  junction: freedesktop-sdk.bst
- filename: base/docbook-xsl.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
