kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-initial-setup/40/gnome-initial-setup-40.4.tar.xz
  ref: 412a6584ee6ea4df9637c422993f4eaf81584d29190f5e893af9a7871cb9031b
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
- core-deps/malcontent.bst
- core-deps/upower.bst
- core/cheese.bst
- core/gdm.bst
- core/gnome-desktop.bst
- core/gnome-keyring.bst
- sdk/adwaita-icon-theme.bst
- sdk/geoclue.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/webkitgtk.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/pwquality.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  sysusersdir: '%{prefix}/lib/sysusers.d'
  meson-local: >-
    -Dcheese=enabled
    -Dparental_controls=enabled
    -Dsoftware-sources=disabled

config:
  install-commands:
    (>):
    - mkdir -p %{install-root}%{sysusersdir}
    - install -m 644 gnome-initial-setup-config/gnome-initial-setup-sysusers.conf
      %{install-root}%{sysusersdir}/gnome-initial-setup.conf
