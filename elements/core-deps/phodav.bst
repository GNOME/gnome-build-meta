kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/phodav
  track: master
depends:
- core-deps/avahi.bst
- core-deps/libgudev.bst
- sdk/glib.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/libsoup.bst
- filename: desktop/systemd.bst
  junction: freedesktop-sdk.bst
- filename: base/intltool.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/perl-xml-parser.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/git.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
