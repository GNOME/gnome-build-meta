kind: meson

sources:
- kind: git_tag
  url: gnome:connections.git
  track: master
  submodules:
    subprojects/gtk-frdp:
      checkout: true
      url: gnome:gtk-frdp.git
  ref: 44.0-4-g30f5ae5ff47876d698be6ba60c56e12f9d8640d6

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
