kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-shell.git
  track: master
  submodules:
    subprojects/gvc:
      checkout: true
      url: gitlab_gnome_org:GNOME/libgnome-volume-control.git
build-depends:
- freedesktop-sdk.bst:components/asciidoc.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/perl.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/NetworkManager.bst
- core-deps/accountsservice.bst
- core-deps/evolution-data-server.bst
- core-deps/gnome-autoar.bst
- core-deps/libcroco.bst
- core-deps/sassc.bst
- core-deps/upower.bst
- core/gdm.bst
- core/gnome-bluetooth.bst
- core/gnome-desktop.bst
- core/gnome-settings-daemon.bst
- core/mutter.bst
- sdk/adwaita-icon-theme.bst
- sdk/dconf.bst
- sdk/gcr.bst
- sdk/gjs.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gst-plugins-base.bst
- sdk/gtk+-3.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:bootstrap-import.bst
