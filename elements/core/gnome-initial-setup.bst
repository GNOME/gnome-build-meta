kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-initial-setup.git
  track: master
- kind: local
  path: files/gnome-initial-setup/gnome-initial-setup-sysusers.conf
  directory: gnome-initial-setup-config
- kind: patch
  # FIXME: Because gnome-initial-setup runs as a user service, it does
  # not seem to be associated to a seat. So the polkit subject is not
  # considered local. Users cannot set up the wifi.
  # See issue https://gitlab.gnome.org/GNOME/gnome-initial-setup/-/issues/102
  path: files/gnome-initial-setup/work-around-polkit-without-session.patch
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
    - install -m 644 gnome-initial-setup-config/gnome-initial-setup-sysusers.conf %{install-root}%{sysusersdir}/gnome-initial-setup.conf
