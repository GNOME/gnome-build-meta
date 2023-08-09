kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-connections/45/gnome-connections-45.beta.tar.xz
  ref: c336f1c33007b28fb42f0f33ffc8e4456e2eb660786fef04774153aa6f5c2a9a
build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/freerdp.bst
- core-deps/gtk-vnc.bst
- sdk/adwaita-icon-theme.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- sdk/libsecret.bst
- freedesktop-sdk.bst:bootstrap-import.bst
