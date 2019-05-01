kind: autotools
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gdm.git
  track: master
- kind: local
  path: files/gdm
  directory: gdm-config
depends:
- core-deps/accountsservice.bst
- core-deps/upower.bst
- sdk/dconf.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libcanberra.bst
- sdk/yelp-tools.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  sysusersdir: "%{prefix}/lib/sysusers.d"
  conf-local: >-
    --enable-wayland-support
    --with-pam-prefix=%{sysconfdir}
    --with-default-pam-config=lfs
    --with-run-dir=/run/gdm
    --with-plymouth=no

config:
  install-commands:
    (>):
    - mkdir -p %{install-root}%{sysusersdir}
    - install -m 644 gdm-config/gdm-sysusers.conf %{install-root}%{sysusersdir}/gdm.conf
