kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-boxes/3.35/gnome-boxes-3.35.90.tar.xz
  ref: 6a9c001f7950daef7edef0e218cb8694c852ff48f59c1f3f762cc550814fea57
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
  meson-local: -Drdp=false
