kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-connections/43/gnome-connections-43.0.tar.xz
  ref: 85dad82f93c0b2f609fe8ec7ecdeec70600a55612afc0e3f02774c25a0bb309f
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
