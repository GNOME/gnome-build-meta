kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-settings-daemon.git
  track: master
  ref: 48.beta-0-g2bb34b5ee5fe2d8133abc1c554e12f0f877ce85f
- kind: git_module
  url: gnome:libgnome-volume-control.git
  path: subprojects/gvc
  ref: 91f3f41490666a526ed78af744507d7ee1134323

build-depends:
- freedesktop-sdk.bst:components/perl.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/ModemManager.bst
- core-deps/NetworkManager.bst
- core-deps/colord.bst
- core-deps/cups-pk-helper.bst
- core-deps/geocode-glib.bst
- core-deps/ibus-daemon.bst
- core-deps/libcanberra.bst
- core-deps/libgweather.bst
- core-deps/upower.bst
- core/gnome-desktop.bst
- sdk/gcr.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/libnotify.bst
- freedesktop-sdk.bst:components/alsa-lib.bst
- freedesktop-sdk.bst:components/geoclue-libs.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/libwacom.bst
- freedesktop-sdk.bst:components/xorg-lib-xtst.bst
- freedesktop-sdk.bst:bootstrap-import.bst
