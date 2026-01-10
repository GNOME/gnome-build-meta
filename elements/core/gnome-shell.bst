kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-shell/50/gnome-shell-50.alpha.tar.xz
  ref: fb7183424b3297c2bf23acd4553fc4db0f92a55f0989550ad55665c002c97b5a
- kind: git_repo
  url: gnome:libgnome-volume-control.git
  directory: subprojects/gvc
  ref: 5f9768a2eac29c1ed56f1fbb449a77a3523683b6
- kind: git_repo
  url: gnome:libshew.git
  directory: subprojects/libshew
  ref: ed782477cb5164320ae4f731d49bc5d475ab2a52
- kind: patch
  path: patches/gnome-shell/launch-installer.patch

build-depends:
- sdk-deps/sassc.bst
- core-deps/jasmine-gjs.bst
- core-deps/umockdev.bst
- freedesktop-sdk.bst:components/python3-docutils.bst
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
- core-deps/startup-notification.bst
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
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dextensions_app=false
    -Dextensions-tool:bash_completion=disabled
