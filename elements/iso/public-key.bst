kind: manual

build-depends:
- freedesktop-sdk.bst:components/gnupg.bst

config:
  build-commands:
  - gpg --no-default-keyring --keyring ./eos-image-keyring.gpg --import *.gpg
  - |
    for key in $(gpg --list-keys --with-colons \
                 | grep "^fpr:" | cut -d: -f10); do
      gpg --command-fd 0 \
          --no-default-keyring \
          --keyring ./eos-image-keyring.gpg \
          --edit-key "${key}" \
          trust <<EOF
    4
    y
    EOF
    done

  install-commands:
  - install -Dm644 -t "%{install-root}%{datadir}/keyrings" eos-image-keyring.gpg

sources:
- kind: local
  (?):
  - not signed:
      path: public-key.gpg
  - signed:
      path: files/vm/gnome.gpg
