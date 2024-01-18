kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-initial-setup.git
  track: master
  ref: 46.alpha-3-g980705cde6b98a2739b41f722932873ac50bcb77
- kind: local
  path: files/gnome-initial-setup/tmpfiles.conf

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/NetworkManager.bst
- core-deps/accountsservice.bst
- core-deps/geocode-glib.bst
- core-deps/gnome-online-accounts.bst
- core-deps/ibus-daemon.bst
- core-deps/libgweather.bst
- core-deps/libnma.bst
- core-deps/librest.bst
- core-deps/malcontent.bst
- core-deps/upower.bst
- core/gdm.bst
- core/gnome-desktop.bst
- core/gnome-keyring.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/webkitgtk-6.0.bst
- freedesktop-sdk.bst:components/geoclue-libs.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/pwquality.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dparental_controls=enabled

config:
  install-commands:
    (>):
    - |
      tmpfilesdir="$(pkg-config --variable=tmpfilesdir systemd)"
      install -Dm644 tmpfiles.conf "%{install-root}${tmpfilesdir}/gnome-initial-setup.conf"
