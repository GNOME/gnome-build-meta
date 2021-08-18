kind: meson

sources:
- kind: git_tag
  url: gitlab_gnome_org:felipeborges/gnome-connections.git
  track: master
  submodules:
    subprojects/gtk-frdp:
      checkout: true
      url: gitlab_gnome_org:GNOME/gtk-frdp.git

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
- freedesktop-sdk.bst:bootstrap-import.bst
