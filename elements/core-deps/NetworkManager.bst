kind: meson

sources:
- kind: git_repo
  url: freedesktop:NetworkManager/NetworkManager.git
  track: "*.*"
  exclude:
  - "*-dev*"
  - "*-rc*"
  ref: 1.58.1-0-g7406dfbcc35beed79bf2734e3e7376ead320bd99

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/bpf-maybe.bst
- freedesktop-sdk.bst:components/llvm.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:components/sed.bst
- freedesktop-sdk.bst:components/systemd.bst

depends:
- core-deps/mobile-broadband-provider-info.bst
- core-deps/ppp.bst
- sdk/glib.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:components/curl.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/gnutls.bst
- freedesktop-sdk.bst:components/iptables.bst
- freedesktop-sdk.bst:components/libbpf.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/libndp.bst
- freedesktop-sdk.bst:components/libnvme.bst
- freedesktop-sdk.bst:components/libpsl.bst
- freedesktop-sdk.bst:components/modemmanager.bst
- freedesktop-sdk.bst:components/nss.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dmore_asserts=no
    -Dcrypto=gnutls
    -Dintrospection=true
    -Dvapi=true
    -Ddocs=true
    -Dtests=no
    -Dlibaudit=no
    -Dnmtui=false
    -Dselinux=false
    -Dqt=false
    -Dovs=false
    -Dnm_cloud_setup=false

environment:
  # Don't use the RECC wrapper
  # See https://gcc.gnu.org/bugzilla/show_bug.cgi?id=108108#c5
  PATH: /usr/bin

config:
  install-commands:
    (>):
    - |
      rm '%{install-root}%{indep-libdir}/systemd/system/NetworkManager-config-initrd.service'
      rm '%{install-root}%{indep-libdir}/systemd/system/NetworkManager-initrd.service'
      rm '%{install-root}%{indep-libdir}/systemd/system/NetworkManager-wait-online-initrd.service'
