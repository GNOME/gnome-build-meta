kind: autotools
sources:
- kind: git_tag
  url: git_freedesktop_org:NetworkManager/NetworkManager.git
  track: master

depends:
- core-deps/iptables.bst
- core-deps/libgudev.bst
- core-deps/libndp.bst
- core-deps/ppp.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/pygobject.bst
- sdk/vala.bst
- filename: components/curl.bst
  junction: freedesktop-sdk.bst
- filename: components/intltool.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: components/perl-xml-parser.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: components/gnutls.bst
  junction: freedesktop-sdk.bst
- filename: components/nss.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
- filename: components/systemd.bst
  junction: freedesktop-sdk.bst
  type: runtime

variables:
  conf-local: >-
    PYTHON=python3
    --with-udev-dir=/usr/lib/udev
    --with-crypto=gnutls
    --enable-introspection
    --disable-more-warnings
    --disable-json-validation
    --disable-ovs

public:
  bst:
    integration-commands:
    - |
      # Automatically start NetworkManager at boot time
      systemctl enable NetworkManager
