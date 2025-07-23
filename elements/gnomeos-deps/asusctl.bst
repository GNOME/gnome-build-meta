kind: make

sources:
- kind: git_repo
  url: gitlab:asus-linux/asusctl.git
  track: '*.*'
  ref: 6.2.0-0-gd03d8ce67f5a60935735a2aac29eb7d2d8297709
  # cargo2 has a bug
- kind: tar
  url: gitlab:-/project/20328305/uploads/12495af1884fe267557695bad72882e5/vendor_asusctl_6.1.12.tar.xz
  ref: 19244c0d725ef1cee8caa5b29355e8158af69f104c59600cb4420215163d58d2
  directory: vendor
- kind: local
  path: files/asusctl/asusd-user.preset
  directory: local

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/rust.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/tar.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/fontconfig.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/openssl.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:components/xorg-lib-xfixes.bst

runtime-depends:
- gnomeos-deps/supergfxctl.bst

variables:
  make-args: >-
    ARGS='--frozen --release'

config:
  configure-commands:
  - |
    mkdir -p .cargo
    cat <<EOF >.cargo/config.toml
    [source.crates-io]
    replace-with = "vendored-sources"

    [source."git+https://github.com/flukejones/sg-rs.git"]
    git = "https://github.com/flukejones/sg-rs.git"
    replace-with = "vendored-sources"

    [source."git+https://github.com/slint-ui/slint.git"]
    git = "https://github.com/slint-ui/slint.git"
    replace-with = "vendored-sources"

    [source."git+https://gitlab.com/asus-linux/supergfxctl.git"]
    git = "https://gitlab.com/asus-linux/supergfxctl.git"
    replace-with = "vendored-sources"

    [source.vendored-sources]
    directory = "vendor"
    EOF

  install-commands:
    (>):
    - |
      install -Dm644 local/asusd-user.preset '%{install-root}%{indep-libdir}/systemd/user-preset/60-asusd-user.preset'

    - |
      cat <<EOF >>'%{install-root}%{datadir}/applications/rog-control-center.desktop'
      Hidden=true
      EOF
