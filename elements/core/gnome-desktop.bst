kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-desktop.git
  track: master
- kind: patch
  path: files/gnome-desktop/0001-crossfade-remove-gdkx-x-dependency.patch
- kind: patch
  path: files/gnome-desktop/0002-gnomebg-remove-gdkx-x-dependency.patch
- kind: patch
  path: files/gnome-desktop/0001-libgnome-desktop-gnome-rr-config.c-Remove-unneded-gd.patch
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/libgudev.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/iso-codes.bst
- freedesktop-sdk.bst:components/itstools.bst
- freedesktop-sdk.bst:components/libseccomp.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dgnome-distributor=gnome-build-meta
