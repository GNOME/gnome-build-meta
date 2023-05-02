kind: meson

sources:
- kind: git_tag
  url: gnome:totem.git
  track: master
  ref: 43.0-127-gfa01f7dd25f00c5751ac27dab323a2881d34ffdf
  submodules:
    subprojects/libgd:
      checkout: true
      url: gnome:libgd.git
    flatpak/shared-modules:
      checkout: false
      url: github:flathub/shared-modules.git

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
- sdk/gst-plugins-bad.bst
- sdk/gst-plugins-base.bst
- sdk/gst-plugins-good.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:bootstrap-import.bst
