kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-connections/42/gnome-connections-42.0.tar.xz
  ref: 2f7b39bb438f4b6a0cdc99f62631a95db23e5bb242ec6839a4c95029c87024ed
build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
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
