kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-initial-setup.git
  track: master
- kind: local
  path: files/gnome-initial-setup
  directory: gnome-initial-setup-config
depends:
- core-deps/NetworkManager.bst
- core-deps/accountsservice.bst
- core-deps/gnome-online-accounts.bst
- core-deps/libgweather.bst
- core-deps/upower.bst
- core/gdm.bst
- core/gnome-desktop.bst
- core/gnome-getting-started-docs.bst
- core/gnome-keyring.bst
- core/network-manager-applet.bst
- sdk/WebKitGTK.bst
- sdk/adwaita-icon-theme.bst
- sdk/geoclue.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/ibus.bst
- filename: components/gstreamer.bst
  junction: freedesktop-sdk.bst
- filename: components/pwquality.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  sysusersdir: "%{prefix}/lib/sysusers.d"
  meson-local: >-
    -Dcheese=disabled
    -Dsoftware-sources=disabled

config:
  install-commands:
    (>):
    - mkdir -p %{install-root}%{sysusersdir}
    - install -m 644 gnome-initial-setup-config/gnome-initial-setup-sysusers.conf %{install-root}%{sysusersdir}/gnome-initial-setup.conf
