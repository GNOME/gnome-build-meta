kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-initial-setup/46/gnome-initial-setup-46.0.tar.xz
  ref: f8ee9dcea7e35e735eaa3bc8d1041d06bb64ebf1e1046e5e8e48f1fb44151847
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
