kind: meson
sources:
- kind: tar
  url: gnome_downloads:gdm/49/gdm-49.1.tar.xz
  ref: 69da5d1319dc2c68adf5cd394ad59bec99bb2e24f284045a1bb4acd7740044e5
- kind: local
  path: files/gdm
  directory: gdm-config
build-depends:
- core-deps/libcheck.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/accountsservice.bst
- core-deps/dconf.bst
- core-deps/libcanberra.bst
- core-deps/plymouth.bst
- core-deps/upower.bst
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
variables:
  sysusersdir: '%{prefix}/lib/sysusers.d'
  pamdir: '%{sysconfdir}/pam.d'
  meson-local: >-
    -Ddefault-pam-config=none
    -Dlibaudit=disabled
    -Dpam-prefix=%{sysconfdir}
    -Dplymouth=enabled
    -Drun-dir=/run/gdm
    -Dselinux=disabled
    -Dxdmcp=disabled

config:
  install-commands:
    (>):
    - mkdir -p %{install-root}%{sysusersdir}
    - install -m 644 gdm-config/gdm-sysusers.conf %{install-root}%{sysusersdir}/gdm.conf

    - mkdir -p %{install-root}%{pamdir}
    - |
      # Our configuration is similar to redhat but without selinux
      for conffile in `find gdm-config/ -name "*.pam"`; do
        install -m 644 $conffile %{install-root}%{pamdir}/$(basename ${conffile%.pam})
      done
