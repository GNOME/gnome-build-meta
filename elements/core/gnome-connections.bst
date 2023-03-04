kind: meson

sources:
- kind: git_tag
  url: gnome:connections.git
  track: master
  submodules:
    subprojects/gtk-frdp:
      checkout: true
      url: gnome:gtk-frdp.git
  ref: 44.rc-2-g8ac67093fe7570f9464fe60cf8537ff2c04b952b

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
