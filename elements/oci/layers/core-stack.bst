kind: stack

depends:
# Useful utilities for testing in CI
- core-deps/foundry.bst
- core-deps/python-argcomplete.bst
- core-deps/python-dbusmock.bst
- core-deps/setxkbmap.bst
- core-deps/xvfb.bst
- core-deps/zenity.bst
- freedesktop-sdk.bst:components/git-lfs.bst
- freedesktop-sdk.bst:components/nano.bst
- freedesktop-sdk.bst:components/python3-docutils.bst
- freedesktop-sdk.bst:components/vim.bst
- gnomeos-deps/fish.bst
- gnomeos-deps/grcov.bst

# Useful utilities for building extensions in CI
- gnomeos-deps/sysext-utils.bst

# Currently for sysprof-ebpf but useful in general
- freedesktop-sdk.bst:components/bpf.bst
- freedesktop-sdk.bst:components/vmlinuxh.bst

# Common build deps that do not make it to the runtime
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:components/python3-docutils.bst
- sdk/gi-docgen.bst
- sdk-deps/libsass.bst
- sdk-deps/sassc.bst
- core-deps/umockdev.bst
# Used by gdm tests
- core-deps/libcheck.bst

- freedesktop-sdk.bst:components/less.bst
- freedesktop-sdk.bst:components/shadow.bst
- freedesktop-sdk.bst:components/sudo.bst
- freedesktop-sdk.bst:components/xmlto.bst
- freedesktop-sdk.bst:components/bash-completion.bst
- freedesktop-sdk.bst:components/bash-config.bst

- freedesktop-sdk.bst:components/xdg-desktop-portal.bst
- core-deps/xdg-desktop-portal-gnome.bst
- core-deps/xdg-desktop-portal-gtk.bst

- core-deps/systemd.bst
- core-deps/systemd-hwdb.bst

- freedesktop-sdk.bst:vm/mesa-default.bst

- core.bst
- sdk-platform.bst
- sdk.bst
- oci/integration/extrafs.bst
- oci/os-release.bst

public:
  bst:
    integration-commands:
    - groupadd root -r -g 0
    - useradd root -rm -u 0 -g 0 -d /root
    - |
      cat <<EOF >>/etc/sudoers
      %wheel ALL=(ALL) NOPASSWD: ALL
      EOF
    - mkdir -p /media
    - mkdir -p /home
    - touch /etc/machine-id
    - groupadd -r wheel
