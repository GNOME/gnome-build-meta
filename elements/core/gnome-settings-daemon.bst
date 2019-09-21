kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-settings-daemon.git
  track: master
  submodules:
    subprojects/gvc:
      checkout: True
      url: gitlab_gnome_org:GNOME/libgnome-volume-control.git

depends:
- core-deps/ModemManager.bst
- core-deps/NetworkManager.bst
- core-deps/colord.bst
- core-deps/geocode-glib.bst
- core-deps/libgudev.bst
- core-deps/libgweather.bst
- core-deps/libwacom.bst
- core-deps/upower.bst
- core/gnome-desktop.bst
- sdk/gcr.bst
- sdk/geoclue.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/ibus.bst
- sdk/libcanberra.bst
- sdk/libnotify.bst
- filename: components/alsa-lib.bst
  junction: freedesktop-sdk.bst
- filename: components/cups.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-lib-xtst.bst
  junction: freedesktop-sdk.bst
- filename: components/perl.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
