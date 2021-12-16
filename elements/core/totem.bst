kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/totem.git
  track: master
  submodules:
    subprojects/libgd:
      checkout: true
      url: gitlab_gnome_org:GNOME/libgd.git
    flatpak/shared-modules:
      checkout: false
      url: github_com:flathub/shared-modules.git
build-depends:
- sdk/appstream-glib.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/clutter-gst.bst
- core-deps/clutter-gtk.bst
- core-deps/clutter.bst
- core-deps/grilo-plugins.bst
- core-deps/grilo.bst
- core-deps/libpeas.bst
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
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Denable-vala=no
