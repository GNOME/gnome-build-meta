kind: stack

depends:
- oci/layers/platform-stack.bst

- freedesktop-sdk.bst:components/shadow.bst
- freedesktop-sdk.bst:components/sudo.bst
- sdk.bst

public:
  bst:
    integration-commands:
    - groupadd root -r -g 0
    - useradd root -rm -u 0 -g 0 -d /root
    - mkdir -p /media
    - mkdir -p /home
    - touch /etc/machine-id
