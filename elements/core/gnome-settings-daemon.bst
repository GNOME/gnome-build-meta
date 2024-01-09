kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-settings-daemon/46/gnome-settings-daemon-46.alpha.tar.xz
  ref: b70e76906acf8140c5578cf541caa5822f9f1bfa0959c3f2a7470f360ab4baed
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
