kind: manual

sources:
- kind: tar
  url: github_com:containers/podman/archive/v2.0.2.tar.gz
  directory: src/github.com/containers/podman
- kind: local
  path: files/podman/registries.conf
  directory: registries
- kind: patch
  path: files/podman/podman-stdin.patch
  directory: src/github.com/containers/podman

build-depends:
- freedesktop-sdk.bst:components/pkg-config.bst
- vm/podman/go.bst
- vm/podman/go-md2man.bst

depends:
- freedesktop-sdk.bst:components/libseccomp.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:components/gpgme.bst
- freedesktop-sdk.bst:bootstrap-import.bst

runtime-depends:
- vm/podman/conmon.bst
- vm/podman/cni.bst
- vm/podman/crun.bst
- vm/podman/slirp4netns.bst
- vm/podman/fuse-overlayfs.bst
- core-deps/iptables.bst

environment:
  GOPATH: "%{build-root}"

variables:
  ldflags_defaults: ""
  optimize-debug: "false"

config:
  build-commands:
  - |
    cd src/github.com/containers/podman
    make

  install-commands:
  - |
    cd src/github.com/containers/podman
    make DESTDIR="%{install-root}" PREFIX="%{prefix}" install

  - |
    install -Dm644 registries/registries.conf "%{install-root}%{sysconfdir}/containers/registries.conf"

  - |
    cat <<EOF >policy.json
    {
      "default": [{"type": "insecureAcceptAnything"}],
      "transports": {}
    }
    EOF
    install -Dm644 policy.json "%{install-root}%{sysconfdir}/containers/policy.json"
