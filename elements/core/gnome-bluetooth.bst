kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-bluetooth
  track: master
  submodules:
    subprojects/libhandy:
      url: purism:Librem5/libhandy.git
      checkout: True
depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/libcanberra.bst
- sdk/libnotify.bst
- filename: desktop/systemd.bst
  junction: freedesktop-sdk.bst
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
