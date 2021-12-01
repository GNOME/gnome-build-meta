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
- kind: patch
  path: files/gnome-boxes/re-order-recommended.patch

build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/freerdp.bst
- core-deps/gtk-vnc.bst
- core-deps/libosinfo.bst
- core-deps/libvirt-glib.bst
- core-deps/osinfo-db.bst
- core-deps/spice-gtk.bst
- core-deps/tracker-miners.bst
- core-deps/vte.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/gtksourceview-4.bst
- sdk/json-glib.bst
- sdk/libhandy.bst
- sdk/libsecret.bst
- sdk/tracker.bst
- sdk/webkit2gtk-4.0.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:bootstrap-import.bst
