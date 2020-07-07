kind: meson
sources:
- kind: tar
  url: gnome_downloads:gdm/3.37/gdm-3.37.1.tar.xz
  ref: c5fc0b8a15488f35cdc5e59e3c963e5ae4b2d3f38bef86bfad9a424d8d63ee9a
- kind: local
  path: files/gdm
  directory: gdm-config
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/accountsservice.bst
- core-deps/upower.bst
- core-deps/plymouth.bst
- core-deps/libcanberra.bst
- sdk/dconf.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
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
