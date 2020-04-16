kind: stack

# Some boards do not have a realtime clock and timesyncd
# cannot be set if DNSSEC is enabled.
# Upstream issue: https://github.com/systemd/systemd/issues/5873

runtime-depends:
- freedesktop-sdk.bst:components/systemd.bst

public:
  bst:
    integration-commands:
    - |
      echo DNSSEC=no >>/etc/systemd/resolved.conf
