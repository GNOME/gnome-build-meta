kind: manual

build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/acpica-tools.bst
- freedesktop-sdk.bst:components/util-linux.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:components/nasm.bst

environment:
  JOBS: "%{max-jobs}"
  PACKAGES_PATH: '%{build-root}/edk2:%{build-root}/edk2-platforms:%{build-root}/edk2-non-osi'
  EDK_TOOLS_PATH: '%{build-root}/edk2/BaseTools'

environment-nocache:
- JOBS

variables:
  # DEBUG
  build-target: RELEASE
  build-args: >-
    -n "${JOBS}"
    --buildtarget=%{build-target}
    --tagname=GCC5
    --platform='%{platform}'
    %{arch-args}

  #-D X64EMU_ENABLE
  #-D SOURCE_DEBUG_ENABLE

  (?):
  - arch == "riscv64":
      arch-args: >-
        --arch=RISCV64
        -D X64EMU_ENABLE
      platform: Platform/Sophgo/SG2042_EVB_Board/SG2042.dsc
      firmware: Build/SG2042_EVB/%{build-target}_GCC5/FV/SG2042.fd

config:
  build-commands:
  - |
    . ./edk2/edksetup.sh
    make -C edk2/BaseTools -j${JOBS}
    build %{build-args}

  install-commands:
  - |
    install -Dm644 -t "%{install-root}/riscv64" %{firmware}

sources:
- kind: git_repo
  url: github:sophgo/edk2.git
  track: refs/heads/sg2042-dev
  #url: github:tianocore/edk2.git
  #track: refs/heads/master
  directory: edk2
  ref: edk2-stable202308-462-gd7d4f09ff815794761f84d06e307001afe6376c4
- kind: git_module
  path: CryptoPkg/Library/OpensslLib/openssl
  url: github:openssl/openssl.git
  directory: edk2
  ref: de90e54bbe82e5be4fb9608b6f5c308bb837d355
- kind: git_module
  path: ArmPkg/Library/ArmSoftFloatLib/berkeley-softfloat-3
  url: github:ucb-bar/berkeley-softfloat-3.git
  directory: edk2
  ref: b64af41c3276f97f0e181920400ee056b9c88037
- kind: git_module
  path: UnitTestFrameworkPkg/Library/CmockaLib/cmocka
  url: github:tianocore/edk2-cmocka.git
  directory: edk2
  ref: 1cc9cde3448cdd2e000886a26acf1caac2db7cf1
- kind: git_module
  path: MdeModulePkg/Universal/RegularExpressionDxe/oniguruma
  url: github:kkos/oniguruma.git
  directory: edk2
  ref: abfc8ff81df4067f309032467785e06975678f0d
- kind: git_module
  path: MdeModulePkg/Library/BrotliCustomDecompressLib/brotli
  url: github:google/brotli.git
  directory: edk2
  ref: f4153a09f87cbb9c826d8fc12c74642bb2d879ea
- kind: git_module
  path: BaseTools/Source/C/BrotliCompress/brotli
  url: github:google/brotli.git
  directory: edk2
  ref: f4153a09f87cbb9c826d8fc12c74642bb2d879ea
- kind: git_module
  path: RedfishPkg/Library/JsonLib/jansson
  url: github:akheron/jansson.git
  directory: edk2
  ref: e9ebfa7e77a6bee77df44e096b100e7131044059
- kind: git_module
  path: UnitTestFrameworkPkg/Library/GoogleTestLib/googletest
  url: github:google/googletest.git
  directory: edk2
  ref: 86add13493e5c881d7e4ba77fb91c1f57752b3a4
- kind: git_module
  path: UnitTestFrameworkPkg/Library/SubhookLib/subhook
  url: github:Zeex/subhook.git
  directory: edk2
  ref: 83d4e1ebef3588fae48b69a7352cc21801cb70bc
- kind: git_module
  path: MdePkg/Library/BaseFdtLib/libfdt
  url: github:devicetree-org/pylibfdt.git
  directory: edk2
  ref: cfff805481bdea27f900c32698171286542b8d3c
- kind: git_module
  path: MdePkg/Library/MipiSysTLib/mipisyst
  url: github:MIPI-Alliance/public-mipi-sys-t.git
  directory: edk2
  ref: 370b5944c046bab043dd8b133727b2135af7747a
- kind: git_module
  path: CryptoPkg/Library/MbedTlsLib/mbedtls
  url: github:ARMmbed/mbedtls.git
  directory: edk2
  ref: 8c89224991adff88d53cd380f42a2baa36f91454
- kind: git_repo
  url: github:sophgo/edk2-platforms.git
  track: refs/heads/sg2042-dev
  #url: github:tianocore/edk2-platforms.git
  #track: refs/heads/master
  directory: edk2-platforms
  #ref: 654e02779068c0a7d272af6f2dc31d22174067cf
  # crash ref: 8b20188ced2318c970b3666d2a7c132c40aaee68

  # trying
  #ref: 392ffd8252a9720d35e1450b78230389b3f5a4f6
  # bad (builds) ref: 1225f5b59cc0cfa4f02f188a9fed5e3e69f0f12c
  # bad (builds) ref: 674d6cf4105ed8c973033430fe6d19ec12c0ddee
  # good (build fails) ref: 4cd6927d1f332c46a38110770fd76f81c7e8a846
  # bad (builds) ref: 7afba0d09e0134444284041cd33cf69769e6ec6a
  # good (build failed) ref: 437c9aa96f69b06758343c7251b1f8ff0796d021
  # good (build failed) ref: 4b07df2e6f3813c6e955197dacb2cdfbe3471caa
  # good (build failed) ref: 8b20188ced2318c970b3666d2a7c132c40aaee68

  # old stuff
  # ref: 82c4c4b038659843adb519d2e94ad83d77332c26
  # ref: 8ba9326c47cd1471a60c177738e4fb4cf62eb84a
  ref: 8ba9326c47cd1471a60c177738e4fb4cf62eb84a
- kind: git_module
  path: Silicon/RISC-V/ProcessorPkg/Library/RiscVOpensbiLib/opensbi
  url: github:riscv/opensbi.git
  directory: edk2-platforms
  ref: a731c7e36988c3308e1978ecde491f2f6182d490
- kind: git_repo
  url: github:sophgo/edk2-non-osi.git
  track: refs/heads/sg2042-dev
  #url: github:tianocore/edk2-non-osi.git
  #track: refs/heads/master
  directory: edk2-non-osi
  ref: cdda712ed9295c8d3b665816880c92ebfcf9057d
#- kind: git_repo
#  url: github:intel/MultiArchUefiPkg.git
#  track: refs/heads/main
#  directory: edk2-non-osi/Emulator/MultiArchUefiPkg
#  ref: 5596cb031c88dab1b620afd116d7a3b55f0d4403
#- kind: patch
#  path: the.patch
#  directory: edk2-platforms
