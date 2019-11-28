kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-boxes.git
  track: master
  submodules:
    subprojects/gtk-frdp:
      checkout: true
      url: gitlab_gnome_org:GNOME/gtk-frdp.git
    subprojects/libovf-glib:
      checkout: true
      url: gitlab_gnome_org:felipeborges/libovf-glib.git
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/gtk-vnc.bst
- core-deps/libgudev.bst
- core-deps/libosinfo.bst
- core-deps/libvirt-glib.bst
- core-deps/spice-gtk.bst
- core-deps/tracker-miners.bst
- core-deps/tracker.bst
- core-deps/vte.bst
- sdk/WebKitGTK.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/json-glib.bst
- sdk/libsecret.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Drdp=false
