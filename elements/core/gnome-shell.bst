kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-shell/3.36/gnome-shell-3.36.2.tar.xz
  ref: 3b129b2a1f1f1654a101098ea8b91a73a836aad7d166f52dd46b1c6037ec1753
build-depends:
- sdk-deps/sassc.bst
- freedesktop-sdk.bst:components/asciidoc.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/perl.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- core-deps/libgnomekbd.bst

depends:
- core-deps/NetworkManager.bst
- core-deps/accountsservice.bst
- core-deps/evolution-data-server.bst
- core-deps/gnome-autoar.bst
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
- sdk/libsoup.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dbash_completion=disabled
    -Dextensions-tool:bash_completion=disabled

