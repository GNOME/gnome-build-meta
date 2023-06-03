kind: manual

build-depends:
- freedesktop-sdk.bst:components/linux.bst
- freedesktop-sdk.bst:components/sign-file.bst

config:
  install-commands:
  - |
    mkdir -p "%{install-root}/usr/lib"
    cp -rT /usr/lib/modules "%{install-root}/usr/lib/modules"

  - |
    mkdir -p "%{install-root}/boot"
    cp -rT /boot "%{install-root}/boot"

  - |
    openssl x509 -inform PEM -outform DER -in "linux-module-cert.crt" -out "linux-module-cert.cer"

  - |
    find '%{install-root}/usr/lib/modules' -type f -name "*.ko.xz" -exec unxz {} ';'

  - |
    find '%{install-root}/usr/lib/modules' -type f -name "*.ko" -exec sign-file sha512 linux-module-cert.key linux-module-cert.cer {} ';' -exec xz --lzma2=dict=2MiB {} ';'

sources:
- kind: local
  path: files/boot-keys/linux-module-cert.key
- kind: local
  path: files/boot-keys/modules/linux-module-cert.crt
