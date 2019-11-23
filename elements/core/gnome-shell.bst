kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-shell/47/gnome-shell-47.beta.tar.xz
  ref: d2fe3fb0aef12e8b845ab36948352262693191409f15c47a942e6fc89f234889
- kind: git_repo
  url: gnome:libgnome-volume-control.git
  directory: subprojects/gvc
  ref: 5f9768a2eac29c1ed56f1fbb449a77a3523683b6

build-depends:
- sdk-deps/sassc.bst
- core-deps/jasmine-gjs.bst
- freedesktop-sdk.bst:components/asciidoc.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/perl.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- core-deps/libgweather.bst
- core/tecla.bst
- freedesktop-sdk.bst:components/geoclue-libs.bst

depends:
- core-deps/NetworkManager.bst
- core-deps/accountsservice.bst
- core-deps/dconf.bst
- core-deps/evolution-data-server.bst
- core-deps/gnome-autoar.bst
- core-deps/upower.bst
- core/gdm.bst
- core/gnome-bluetooth.bst
- core/gnome-desktop.bst
- core/gnome-settings-daemon.bst
- core/mutter.bst
- sdk/adwaita-icon-theme.bst
- sdk/gcr.bst
- sdk/gjs.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-base.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dextensions_app=false
    -Dextensions-tool:bash_completion=disabled
