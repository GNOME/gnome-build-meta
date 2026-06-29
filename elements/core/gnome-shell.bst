kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-shell/51/gnome-shell-51.alpha.tar.xz
  ref: 5b33be415b21551b45bb685a7682abbf8da4402705f5fadf3ec45dc982cc5fd7
- kind: git_repo
  url: gnome:libgnome-volume-control.git
  directory: subprojects/gvc
  ref: d2442f455844e5292cb4a74ffc66ecc8d7595a9f
- kind: git_repo
  url: gnome:libshew.git
  directory: subprojects/libshew
  ref: d16afc40412b565d2bbecf80335f54a19a978009

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk-deps/sassc.bst
- core-deps/jasmine-gjs.bst
- core-deps/umockdev.bst
- freedesktop-sdk.bst:components/python3-docutils.bst
- freedesktop-sdk.bst:components/perl.bst

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
    -Dextensions-tool:bash_completion=disabled
