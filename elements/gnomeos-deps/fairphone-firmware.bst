kind: manual

sources:
- kind: git_repo
  url: github:FairBlobs/FP5-firmware.git
  track: main
  ref: a4908f548e6f88965e78b1478af1751b6a854fc9

build-depends:
- gnomeos-deps/pil-squasher.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  strip-binaries: ''
  install-files: >-
    a660_zap.mbn
    adsp*.jsn
    adsp.mbn
    battmgr.jsn
    cdsp*.jsn
    cdsp.mbn
    modem*.jsn  modem.mbn
    msbtfw11.mbn
    msnv11.bin
    vpu20_1v.mbn
    wpss.mbn
    yupik_ipa_fws.mbn

  link-files: >-
    a660_zap.mbn:a660_zap.mdt
    adsp.mbn:adsp.mdt
    cdsp.mbn:cdsp.mdt
    yupik_ipa_fws.mbn:ipa_fws.mdt
    yupik_ipa_fws.mbn:ipa_fws.mbn
    vpu20_1v.mbn:venus.mbn
    wpss.mbn:wpss.mdt

config:
  build-commands:
  - |
    for f in *.mdt; do
      pil-squasher "${f%.mdt}.mbn" "${f}"
    done

  install-commands:
  - |
    install -Dm644 -t '%{install-root}%{indep-libdir}/firmware/qcom/qcm6490/fairphone5' %{install-files}

  - |
    for l in %{link-files}; do
      ln -s "${l%%:*}" "%{install-root}%{indep-libdir}/firmware/qcom/qcm6490/fairphone5/${l#*:}"
    done

  - |
    cp -rT modem_pr '%{install-root}%{indep-libdir}/firmware/qcom/qcm6490/fairphone5/modem_pr'

  - |
    install -Dm755 -d '%{install-root}%{datadir}/qcom/qcm6490/Fairphone/fairphone5'
    cp -rT hexagonfs '%{install-root}%{datadir}/qcom/qcm6490/Fairphone/fairphone5'
