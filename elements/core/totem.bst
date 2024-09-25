kind: meson

sources:
- kind: git_repo
  url: gnome:totem.git
  track: master
  ref: 43.0-252-gf0558d45937dfcf468eff1ebb5f39360733e99c3
- kind: git_module
  url: gnome:libgd.git
  path: subprojects/libgd
  ref: 29ad6319919cf2fd4c4d53d6beed30c34bcb0e23
- kind: git_module
  url: github:flathub/shared-modules.git
  path: flatpak/shared-modules
  ref: 11ffefc21cb0145ae03e8fb77618019f82ce2318

build-depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/grilo-plugins.bst
- core-deps/grilo.bst
- core-deps/libpeas-1.bst
- core-deps/libportal.bst
- core-deps/totem-pl-parser.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-bad.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-base.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-good.bst
- freedesktop-sdk.bst:bootstrap-import.bst
