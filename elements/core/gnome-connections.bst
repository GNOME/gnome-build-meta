kind: meson

sources:
- kind: git_tag
  url: gnome:connections.git
  track: master
  submodules:
    subprojects/gtk-frdp:
      checkout: true
      url: gnome:gtk-frdp.git
  ref: 44.rc-10-g187bbe646e7a4130c4035c1fb75752c73177266c

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
