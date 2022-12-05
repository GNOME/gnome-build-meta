kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-boxes/43/gnome-boxes-43.2.tar.xz
  ref: 9c3e0e9433c1853a99ed52edec13263f443f856dbca3b2165c2e3a70b8632b30
build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/libosinfo.bst
- core-deps/libvirt-glib.bst
- core-deps/osinfo-db.bst
- core-deps/spice-gtk.bst
- core-deps/tracker-miners.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/gtksourceview-4.bst
- sdk/json-glib.bst
- sdk/libhandy.bst
- sdk/libsecret.bst
- sdk/tracker.bst
- sdk/webkit2gtk-4.1.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:bootstrap-import.bst
