kind: script

build-depends:
- iso/xz-image.bst
- iso/image-signature.bst
- iso/public-key.bst
- freedesktop-sdk.bst:components/gnupg.bst

config:
  layout:
  - element: components/gnupg.bst
    destination: /
  - element: iso/public-key.bst
    destination: /
  - element: iso/xz-image.bst
    destination: /eosimages
  - element: iso/image-signature.bst
    destination: /eosimages

  commands:
  # We need to verify we imported the public key for the signed image.
  - |
    for image in /eosimages/*; do
      case "${image}" in
        *.asc)
        ;;
        *)
        gpg --no-default-keyring \
            --trust-model always \
            --keyring "%{datadir}/keyrings/eos-image-keyring.gpg" \
            --verify "${image}".asc
        ;;
      esac
    done
