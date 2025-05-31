kind: manual

build-depends:
- filename: gnomeos-deps/nvidia-drivers-modules.bst
  strict: true
- freedesktop-sdk.bst:components/findutils.bst
- freedesktop-sdk.bst:components/sign-file.bst
- freedesktop-sdk.bst:components/zstd.bst

variables:
  strip-binaries: ''

config:
  install-commands:
  - |
    mkdir -p "%{install-root}/usr/lib"
    cp -rT /usr/lib/modules "%{install-root}/usr/lib/modules"

  - |
    openssl x509 -inform PEM -outform DER -in "linux-module-cert.crt" -out "linux-module-cert.cer"

  - |
    find '%{install-root}/usr/lib/modules' -type f -name "*.ko.zst" -exec unzstd --rm {} ';'

  - |
    find '%{install-root}/usr/lib/modules' -type f -name "*.ko" -exec sign-file sha512 MODULES.key linux-module-cert.cer {} ';' -exec zstd --rm {} ';'

  - |
    install -Dm644 -t '%{install-root}%{indep-libdir}/modprobe.d' '%{indep-libdir}/modprobe.d/nvidia.conf'
    install -Dm644 -t '%{install-root}%{indep-libdir}/modules-load.d' '%{indep-libdir}/modules-load.d/nvidia.conf'

  - |
    cp -rT /usr/lib/firmware '%{install-root}%{indep-libdir}/firmware'

sources:
- kind: local
  path: files/boot-keys/MODULES.key
- kind: local
  path: files/boot-keys/modules/linux-module-cert.crt
