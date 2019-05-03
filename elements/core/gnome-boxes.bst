kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-boxes.git
  track: master
  submodules:
    subprojects/gtk-frdp:
      checkout: True
      url: gitlab_gnome_org:GNOME/gtk-frdp.git
    subprojects/libovf-glib:
      checkout: True
      url: gitlab_gnome_org:felipeborges/libovf-glib.git
depends:
- core-deps/gtk-vnc.bst
- core-deps/libgovirt.bst
- core-deps/libgudev.bst
- core-deps/libosinfo.bst
- core-deps/libvirt-glib.bst
- core-deps/spice-gtk.bst
- core-deps/tracker-miners.bst
- core-deps/tracker.bst
- sdk/WebKitGTK.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/json-glib.bst
- sdk/libsecret.bst
- sdk/vala.bst
- sdk/vte.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
- filename: components/itstools.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: >-
    -Drdp=false
