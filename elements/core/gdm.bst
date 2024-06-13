kind: meson
sources:
- kind: git_repo
  url: gnome:gdm.git
  track: main
  ref: 46.0-30-g81ee658c11381912131dd4a29e84190f7f9cd039
- kind: local
  path: files/gdm
  directory: gdm-config
- kind: patch
  path: patches/gdm/nvidia.patch
build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/accountsservice.bst
- core-deps/dconf.bst
- core-deps/libcanberra.bst
- core-deps/plymouth.bst
- core-deps/upower.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
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

public:
  bst:
    integration-commands:
    - |
      cat > /etc/gdm/custom.conf <<EOF
      # GDM configuration storage

      [daemon]
      # Uncomment the line below to force the login screen to use Xorg
      #WaylandEnable=false

      [security]

      [xdmcp]

      [chooser]

      [debug]
      # YES to debug! We are trying to solve openqa-tests issue 62!
      Enable=true
      EOF
