kind: manual

sources:
- kind: git_repo
  url: gitlab:pine64-org/pine64-alsa-ucm.git
  track: master
  ref: ec0ef36b8b897ed1ae6bb0d0de13d5776f5d3659

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/findutils.bst
- freedesktop-sdk.bst:components/sed.bst

variables:
  strip-binaries: ''

config:
  install-commands:
  - |
    mkdir -p %{install-root}%{datadir}/alsa
    mkdir -p %{install-root}%{datadir}/alsa/ucm2/conf.d/simple-card
    find ucm2/ -type f -exec install -v -Dm644 {} %{install-root}%{datadir}/alsa/{} \;
  - |
    sed -i 's/\"\(HiFi\|VoiceCall\).conf\"/\"\/PinePhonePro\/\1.conf\"/' %{install-root}%{datadir}/alsa/ucm2/PinePhonePro/PinePhonePro.conf
    ln -sr %{install-root}%{datadir}/alsa/ucm2/PinePhonePro/PinePhonePro.conf %{install-root}%{datadir}/alsa/ucm2/conf.d/simple-card/simple-card.conf
    ln -sr %{install-root}%{datadir}/alsa/ucm2/PinePhonePro/PinePhonePro.conf %{install-root}%{datadir}/alsa/ucm2/conf.d/simple-card/PINE64-PinePhonePro-.conf
  - |
    %{install-extra}
