kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-initial-setup/3.37/gnome-initial-setup-3.37.91.tar.xz
  ref: d4a710d51cd6862087991a5e55d01bbf8c98cf979d6a988bdd7b550dd95b6e88
- kind: local
  path: files/gnome-initial-setup
  directory: gnome-initial-setup-config
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/NetworkManager.bst
- core-deps/accountsservice.bst
- core-deps/gnome-online-accounts.bst
- core-deps/ibus-daemon.bst
- core-deps/libgweather.bst
- core-deps/libnma.bst
- core-deps/upower.bst
- core/cheese.bst
- core/gdm.bst
- core/gnome-desktop.bst
- core/gnome-getting-started-docs.bst
- core/gnome-keyring.bst
- sdk/WebKitGTK.bst
- sdk/adwaita-icon-theme.bst
- sdk/geoclue.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/pwquality.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  sysusersdir: '%{prefix}/lib/sysusers.d'
  meson-local: >-
    -Dcheese=enabled
    -Dparental_controls=disabled
    -Dsoftware-sources=disabled

config:
  install-commands:
    (>):
    - mkdir -p %{install-root}%{sysusersdir}
    - install -m 644 gnome-initial-setup-config/gnome-initial-setup-sysusers.conf
      %{install-root}%{sysusersdir}/gnome-initial-setup.conf
