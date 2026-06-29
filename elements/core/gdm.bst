kind: meson

sources:
- kind: tar
  url: gnome_downloads:gdm/51/gdm-51.alpha.tar.xz
  ref: 60de09da947b0ed02da54659d95d380883bcce2e88ccc29ba01dbe3e90e40328
- kind: local
  path: files/gdm
  directory: gdm-config

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- core-deps/libcheck.bst
- sdk/yelp-tools.bst

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

    - |
      install -Dm644 -t "%{install-root}%{datadir}/glib-2.0/schemas" gdm-config/org.gnome.login-screen.gschema.override
