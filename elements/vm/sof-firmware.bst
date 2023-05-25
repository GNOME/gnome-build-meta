kind: manual

build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst

config:
  install-commands:
  - |
    install -d -m755 '%{install-root}%{indep-libdir}/firmware/intel'
    cp -aT sof-v* '%{install-root}%{indep-libdir}/firmware/intel/sof'
    cp -aT sof-tplg-v* '%{install-root}%{indep-libdir}/firmware/intel/sof-tplg'

sources:
- kind: tar
  url: github_files:thesofproject/sof-bin/releases/download/v2.2.5/sof-bin-v2.2.5.tar.gz
  ref: 577f450875bd833af9b8b716e368d873aac913a35dd996c7aa0f52adddef92ee
