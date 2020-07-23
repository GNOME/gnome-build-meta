kind: stack

(?):
- arch == "x86_64":
    depends:
    - vm/podman/go-stage1-amd64.bst
- arch == "i686":
    depends:
    - vm/podman/go-stage1-386.bst
- arch == "aarch64":
    depends:
    - vm/podman/go-stage1-arm64.bst
- arch == "arm":
    depends:
    - vm/podman/go-stage1-armv6l.bst
