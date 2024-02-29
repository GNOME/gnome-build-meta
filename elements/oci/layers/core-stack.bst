kind: stack

depends:
# Useful utilities for testing in CI
- core-deps/python-dbusmock.bst
- core-deps/setxkbmap.bst
- core-deps/xvfb.bst
- freedesktop-sdk.bst:components/git-lfs.bst
- freedesktop-sdk.bst:components/nano.bst
- freedesktop-sdk.bst:components/vim.bst
- vm-deps/fish.bst

# Useful utilities for building extensions in CI
- core-deps/sysext-utils.bst

# Common build deps that do not make it to the runtime
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/libxslt.bst
- sdk-deps/gi-docgen.bst
- sdk-deps/libsass.bst
- sdk-deps/sassc.bst

- freedesktop-sdk.bst:components/less.bst
- freedesktop-sdk.bst:components/shadow.bst
- freedesktop-sdk.bst:components/sudo.bst
- freedesktop-sdk.bst:components/xmlto.bst

- core.bst
- sdk-platform.bst
- sdk.bst
- sdk/os-release.bst

public:
  bst:
    integration-commands:
    - groupadd root -r -g 0
    - useradd root -rm -u 0 -g 0 -d /root
    - groupadd -r wheel
    - |
      cat <<EOF >>/etc/sudoers
      %wheel ALL=(ALL) NOPASSWD: ALL
      EOF
    - mkdir -p /media
    - mkdir -p /home
    - touch /etc/machine-id
