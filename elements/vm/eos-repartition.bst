kind: manual
sources:
- kind: tar
  url: github_com:endlessm/eos-boot-helper/archive/Release_3.9.4.tar.gz
  ref: 7d64d86d199205b636206c1844ca303315ed3a2e6fbcc0f1e7a45ee1ffdd4a48
- kind: patch
  path: files/vm/eos-repartition/fix-sector-size-issue.patch
depends:
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  dir: "%{indep-libdir}/dracut/modules.d/50eos-repartition"
config:
  install-commands:
  - |
    cd dracut/repartition
    install -Dm755 -t "%{install-root}%{dir}" \
        module-setup.sh \
        endless-repartition.sh
    install -Dm644 -t "%{install-root}%{dir}" \
        endless-repartition.service
