kind: stack

depends:
- freedesktop-sdk.bst:components/lvm2.bst

public:
  bst:
    integration-commands:
    - |
      sed -i 's/# event_activation = .*/event_activation = 1/' /etc/lvm/lvm.conf
