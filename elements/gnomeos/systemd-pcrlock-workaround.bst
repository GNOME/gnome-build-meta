kind: manual

sources:
- kind: local
  path: files/gnomeos/systemd-pcrlock-workaround.conf
- kind: local
  path: files/gnomeos/systemd-pcrlock-after-esp.conf

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-gnu.bst

variables:
  strip-binaries: ''

config:
  install-commands:
    - |
      for service in systemd-pcrlock@.service \
                     systemd-pcrlock-make-policy.service \
                     systemd-sysupdate-notify-pcrlock@.service; do
        install -Dm644 -t "%{install-root}%{indep-libdir}/systemd/system/${service}.d" systemd-pcrlock-workaround.conf
      done

    - |
      install -Dm644 -t "%{install-root}%{indep-libdir}/systemd/system/systemd-pcrlock-make-policy.service.d" systemd-pcrlock-after-esp.conf
