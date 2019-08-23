kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-shell.git
  track: master
  submodules:
    subprojects/gvc:
      checkout: True
      url: gitlab_gnome_org:GNOME/libgnome-volume-control.git
depends:
- core-deps/NetworkManager.bst
- core-deps/accountsservice.bst
- core-deps/evolution-data-server.bst
- core-deps/gnome-autoar.bst
- core-deps/libgnomekbd.bst
- core-deps/sassc.bst
- core-deps/startup-notification.bst
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
- sdk/libcroco.bst
- sdk/libsoup.bst
- filename: components/asciidoc.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: components/gstreamer.bst
  junction: freedesktop-sdk.bst
- filename: components/docbook-xsl.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: components/perl.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
