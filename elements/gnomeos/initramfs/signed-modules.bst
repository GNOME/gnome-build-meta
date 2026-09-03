kind: manual

build-depends:
- filename: freedesktop-sdk.bst:components/linux.bst
  strict: true
- freedesktop-sdk.bst:components/findutils.bst
- freedesktop-sdk.bst:components/sign-file.bst
- freedesktop-sdk.bst:components/zstd.bst
- freedesktop-sdk.bst:public-stacks/runtime-gnu.bst

config:
  install-commands:
  - |
    mkdir -p "%{install-root}/usr/lib"
    cp -rT /usr/lib/modules "%{install-root}/usr/lib/modules"

  - |
    version="$(ls -1 /usr/lib/modules | head -n1)"
    cp /usr/lib/modules/${version}/vmlinuz "%{install-root}/usr/lib/modules/${version}"
    rm %{install-root}/usr/lib/modules/${version}/System.map
    rm %{install-root}/usr/lib/modules/${version}/vmlinux

  - |
    openssl x509 -inform PEM -outform DER -in "linux-module-cert.crt" -out "linux-module-cert.cer"

  - |
    find '%{install-root}/usr/lib/modules' -type f -name "*.ko" -exec sign-file sha512 MODULES.key linux-module-cert.cer {} ';' -exec zstd --rm  {} ';'

variables:
  strip-binaries: ''

sources:
- kind: local
  path: files/boot-keys/MODULES.key
- kind: local
  path: files/boot-keys/modules/linux-module-cert.crt
