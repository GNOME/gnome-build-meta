kind: meson

sources:
- kind: tar
  url: https://github.com/containers/toolbox/releases/download/0.0.99.1/toolbox-0.0.99.1.tar.xz
  ref: f0a8d25b3712ae8166445cd1595d05f68e64f27242979e3d9bac861a38db54ca
- kind: git_tag
  url: https://github.com/HarryMichal/go-version.git
  track: v1.0.0
  track-tags: false
  directory: 'src/vendor/github.com/HarryMichal/go-version'
  ref: v1.0.0-0-g55580acf86a8aaf1c30ad94a91cfd5dd90a6b222
- kind: git_tag
  url: https://github.com/acobaugh/osrelease.git
  track: a93a0a55a249
  track-tags: false
  directory: 'src/vendor/github.com/acobaugh/osrelease'
  ref: a93a0a55a24912e113e21f81971dc7248de7f6e2
- kind: git_tag
  url: https://github.com/briandowns/spinner.git
  track: v1.10.0
  track-tags: false
  directory: 'src/vendor/github.com/briandowns/spinner'
  ref: v1.10.0-0-gdb9a25053a700cbfa2b021429cd6146205028886
- kind: git_tag
  url: https://github.com/docker/go-units.git
  track: v0.4.0
  track-tags: false
  directory: 'src/vendor/github.com/docker/go-units'
  ref: v0.4.0-0-g519db1ee28dcc9fd2474ae59fca29a810482bfb1
- kind: git_tag
  url: https://github.com/fsnotify/fsnotify.git
  track: v1.4.7
  track-tags: false
  directory: 'src/vendor/github.com/fsnotify/fsnotify'
  ref: v1.4.7-0-gc2828203cd70a50dcccfb2761f8b1f8ceef9a8e9
- kind: git_tag
  url: https://github.com/fatih/color.git
  track: v1.7.0
  track-tags: false
  directory: 'src/vendor/github.com/fatih/color'
  ref: v1.7.0-0-g5b77d2a35fb0ede96d138fc9a99f5c9b6aef11b4
- kind: git_tag
  url: https://github.com/godbus/dbus.git
  track: v5.0.3
  track-tags: false
  directory: 'src/vendor/github.com/godbus/dbus/v5'
  ref: v5.0.3-0-g37bf87eef99d69c4f1d3528bd66e3a87dc201472
- kind: git_tag
  url: https://github.com/inconshreveable/mousetrap.git
  track: v1.0.0
  track-tags: false
  directory: 'src/vendor/github.com/inconshreveable/mousetrap'
  ref: v1.0-0-g76626ae9c91c4f2a10f34cad8ce83ea42c93bb75
- kind: git_tag
  url: https://github.com/konsorten/go-windows-terminal-sequences.git
  track: v1.0.1
  track-tags: false
  directory: 'src/vendor/github.com/konsorten/go-windows-terminal-sequences'
  ref: v1.0.1-0-g5c8c8bd35d3832f5d134ae1e1e375b69a4d25242
- kind: git_tag
  url: https://github.com/mattn/go-colorable.git
  track: v0.1.2
  track-tags: false
  directory: 'src/vendor/github.com/mattn/go-colorable'
  ref: v0.1.2-0-g8029fb3788e5a4a9c00e415f586a6d033f5d38b3
- kind: git_tag
  url: https://github.com/mattn/go-isatty.git
  track: v0.0.8
  track-tags: false
  directory: 'src/vendor/github.com/mattn/go-isatty'
  ref: v0.0.8-0-g1311e847b0cb909da63b5fecfb5370aa66236465
- kind: git_tag
  url: https://github.com/sirupsen/logrus.git
  track: v1.4.2
  track-tags: false
  directory: 'src/vendor/github.com/sirupsen/logrus'
  ref: v1.4.2-0-g839c75faf7f98a33d445d181f3018b5c3409a45e
- kind: git_tag
  url: https://github.com/spf13/cobra.git
  track: v0.0.5
  track-tags: false
  directory: 'src/vendor/github.com/spf13/cobra'
  ref: 0.0.5-0-gf2b07da1e2c38d5f12845a4f607e2e1018cbb1f5
- kind: git_tag
  url: https://github.com/spf13/pflag.git
  track: v1.0.3
  track-tags: false
  directory: 'src/vendor/github.com/spf13/pflag'
  ref: v1.0.3-0-g298182f68c66c05229eb03ac171abe6e309ee79a
- kind: git_tag
  url: https://github.com/golang/crypto.git
  track: 505ab145d0a9
  track-tags: false
  directory: 'src/vendor/golang.org/x/crypto'
  ref: 505ab145d0a99da450461ae2c1a9f6cd10d1f447
- kind: git_tag
  url: https://github.com/golang/sys.git
  track: 66c3f260301c
  track-tags: false
  directory: 'src/vendor/golang.org/x/sys'
  ref: 66c3f260301cac915959651293c11c8207d331e8
- kind: patch
  path: files/toolbox/riscv.patch

build-depends:
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/ca-certificates.bst
- freedesktop-sdk.bst:components/go.bst
- freedesktop-sdk.bst:components/go-md2man.bst
- freedesktop-sdk.bst:components/strace.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:components/podman.bst

variables:
  optimize-debug: "false"
  compress-debug: "false"

environment:
  GOFLAGS: -mod=vendor
