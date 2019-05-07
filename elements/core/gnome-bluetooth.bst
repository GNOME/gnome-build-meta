kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-bluetooth.git
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
- filename: components/systemd.bst
  junction: freedesktop-sdk.bst
- filename: components/gettext.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
