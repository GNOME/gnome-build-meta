kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gdm/3.36/gdm-3.36.2.tar.xz
  ref: 3f561c10ae2e5942b03026f02c0aa7d8712e382708b17a0970874df8175b83a8
- kind: local
  path: files/gdm
  directory: gdm-config
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/accountsservice.bst
- core-deps/upower.bst
- core-deps/plymouth.bst
- sdk/dconf.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libcanberra.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  sysusersdir: '%{prefix}/lib/sysusers.d'
  pamdir: '%{sysconfdir}/pam.d'
  conf-local: >-
    --enable-wayland-support
    --with-pam-prefix=%{sysconfdir}
    --with-run-dir=/run/gdm
    --with-plymouth=yes

config:
  install-commands:
    (>):
    - mkdir -p %{install-root}%{sysusersdir}
    - install -m 644 gdm-config/gdm-sysusers.conf %{install-root}%{sysusersdir}/gdm.conf

    - mkdir -p %{pamdir}
    - |
      # Our configuration is similar to redhat but without selinux
      for conffile in `find gdm-config/ -name "*.pam"`; do
        install -m 644 $conffile %{install-root}%{pamdir}/$(basename ${conffile%.pam})
      done
