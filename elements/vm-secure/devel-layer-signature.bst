kind: manual

build-depends:
- freedesktop-sdk.bst:components/openssl.bst
- filename: vm-secure/devel-layer.bst
  config:
    location: '/devel-layer'

sources:
- kind: local
  path: files/boot-keys/SYSEXT.key
- kind: local
  path: files/boot-keys/SYSEXT.crt

config:
  build-commands:
  - |
    tr -d '\n' </devel-layer/usr-root-hash.txt >root-hash.txt
    openssl smime -sign -nocerts -noattr -binary -in root-hash.txt -inkey SYSEXT.key -signer SYSEXT.crt -outform DER -out der-signature.txt

  - |
    openssl x509 -inform pem -in SYSEXT.crt -outform der -out SYSEXT.der
    sha256sum <SYSEXT.der | sed "s/ .*//" >SYSEXT.fingerprint

  - |
    sig="$(basenc -w 0 --base64 <der-signature.txt)"
    hash="$(cat root-hash.txt)"
    fingerprint="$(cat SYSEXT.fingerprint)"
    cat <<EOF >signature.txt
    {"rootHash":"${hash}","certificateFingerprint":"${fingerprint}","signature":"${sig}"}
    EOF

  install-commands:
  - |
    install -Dm644 -t "%{install-root}" signature.txt
