kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-initial-setup/3.36/gnome-initial-setup-3.36.2.tar.xz
  ref: 4f8be41aea100c56dbf8f0fe1e2354d2d1ac05cf1c79a01cc975c6aa89145756
- kind: local
  path: files/gnome-initial-setup
  directory: gnome-initial-setup-config
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/NetworkManager.bst
- core-deps/accountsservice.bst
- core-deps/gnome-online-accounts.bst
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
- sdk/ibus.bst
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
