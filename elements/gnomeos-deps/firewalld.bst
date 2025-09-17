kind: autotools

sources:
- kind: git_repo
  url: github:firewalld/firewalld.git
  track: 'v*'
  ref: v2.3.1-0-ge491c254e3b1c077113f8826a55515916aecd75b
- kind: local
  path: files/firewalld/lax.xml

build-depends:
- core-deps/intltool.bst
- sdk/glib.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- gnomeos-deps/nftables.bst
- freedesktop-sdk.bst:components/python3.bst

environment:
  ACLOCAL_PATH: /usr/share/gettext/m4

config:
  configure-commands:
    (<):
    - |
      sed -i "s/^IPv6_rpfilter=.*/IPv6_rpfilter=loose/" config/firewalld.conf
      sed -i "s/^DefaultZone=.*/DefaultZone=lax/" config/firewalld.conf

    - |
      sed -i 's/ [$]FIREWALLD_ARGS//' config/firewalld.service.in

  install-commands:
    (>):
    - |
      install -Dm644 -t '%{install-root}%{indep-libdir}/firewalld/zones' lax.xml

    - |
      mv '%{install-root}/etc/modprobe.d' '%{install-root}/usr/lib/modprobe.d'
    - |
      rm '%{install-root}/etc/sysconfig/firewalld'
      rmdir '%{install-root}/etc/sysconfig'
    - |
      rm -rf '%{install-root}%{datadir}/firewalld/testsuite'

    - |
      rm -rf '%{install-root}%{sysconfdir}/logrotate.d'

    # Remove the Qt applet
    - |
      rm -rf '%{install-root}%{sysconfdir}/xdg'
      rm -rf '%{install-root}%{sysconfdir}/firewall'
      find '%{install-root}%{datadir}/icons' -name "firewall-applet*" -delete
      rm '%{install-root}%{mandir}/man1/firewall-applet.1'
      rm '%{install-root}%{bindir}/firewall-applet'

    # Remove the Gtk3 configuration app
    - |
      rm '%{install-root}%{bindir}/firewall-config'
      find '%{install-root}%{datadir}/icons' -name "firewall-config*" -delete
      rm '%{install-root}%{datadir}/applications/firewall-config.desktop'
      rm '%{install-root}%{datadir}/firewalld/firewall-config.glade'
      rm '%{install-root}%{mandir}/man1/firewall-config.1'
      rm '%{install-root}%{datadir}/metainfo/firewall-config.appdata.xml'
