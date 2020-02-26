kind: script

build-depends:
- freedesktop-sdk.bst:components/gnupg.bst
- vm/image.bst

variables:
  install-root: /images
  # This name format is required by eos-installer
  basename: 'GNOMEOS-%{branch}-%{arch}-%{arch}.%{branch}.base'

environment:
  GNUPGHOME: /tmp/gpg

config:
  layout:
  - element: components/gnupg.bst
    destination: /
  - element: vm/image.bst
    destination: /images
  - element: ''
    destination: /tmp

  commands:
  - mv /images/disk.img.xz "/images/%{basename}.img.xz"

  - mkdir "${GNUPGHOME}"
  - |
    cat >/tmp/key-config <<EOF
    Key-Type: DSA
    Key-Length: 1024
    Subkey-Type: ELG-E
    Subkey-Length: 1024
    Name-Real: Gnome OS
    Expire-Date: 0
    %no-protection
    %commit
    EOF

  - gpg --batch --generate-key /tmp/key-config

  - |
    default_key="$(gpg -k --with-colons | sed '/^fpr:/q;d' | cut -d: -f10)"
    echo "default-key ${default_key}" >${GNUPGHOME}/gpg.conf

  - |
    gpg --batch --yes -sbao \
      "/images/%{basename}.img.xz.asc" \
      "/images/%{basename}.img.xz"

  - |
    gpg --export --armor >/tmp/public-key.gpg

  - gpg --no-default-keyring --keyring /tmp/eos-image-keyring.gpg --import /tmp/public-key.gpg

  - |
    for key in $(gpg --k --with-colons | grep "^fpr:" | cut -d: -f10); do
      gpg --command-fd 0 \
          --no-default-keyring \
          --keyring /tmp/eos-image-keyring.gpg \
          --edit-key "${key}" \
          trust <<EOF
    4
    y
    EOF
    done

  - |
    install -Dm644 -t "/images/%{datadir}/keyrings" /tmp/eos-image-keyring.gpg

public:
  bst:
    split-rules:
      image:
      - "/%{basename}.img.xz"
      - "/%{basename}.img.xz.asc"
      keyring:
      - "%{datadir}/keyrings/eos-image-keyring.gpg"
