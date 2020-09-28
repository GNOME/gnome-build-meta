kind: meson

sources:
- kind: tar
  url: https://github.com/containers/toolbox/releases/download/0.0.93/toolbox-0.0.93.tar.xz
- kind: git_tag
  url: https://github.com/HarryMichal/go-version.git
  track: v1.0.0
  track-tags: false
  directory: 'src/vendor/github.com/HarryMichal/go-version'
- kind: git_tag
  url: https://github.com/acobaugh/osrelease.git
  track: a93a0a55a249
  track-tags: false
  directory: 'src/vendor/github.com/acobaugh/osrelease'
- kind: git_tag
  url: https://github.com/briandowns/spinner.git
  track: v1.10.0
  track-tags: false
  directory: 'src/vendor/github.com/briandowns/spinner'
- kind: git_tag
  url: https://github.com/docker/go-units.git
  track: v0.4.0
  track-tags: false
  directory: 'src/vendor/github.com/docker/go-units'
- kind: git_tag
  url: https://github.com/fatih/color.git
  track: v1.7.0
  track-tags: false
  directory: 'src/vendor/github.com/fatih/color'
- kind: git_tag
  url: https://github.com/godbus/dbus.git
  track: v5.0.3
  track-tags: false
  directory: 'src/vendor/github.com/godbus/dbus/v5'
- kind: git_tag
  url: https://github.com/inconshreveable/mousetrap.git
  track: v1.0.0
  track-tags: false
  directory: 'src/vendor/github.com/inconshreveable/mousetrap'
- kind: git_tag
  url: https://github.com/konsorten/go-windows-terminal-sequences.git
  track: v1.0.1
  track-tags: false
  directory: 'src/vendor/github.com/konsorten/go-windows-terminal-sequences'
- kind: git_tag
  url: https://github.com/mattn/go-colorable.git
  track: v0.1.2
  track-tags: false
  directory: 'src/vendor/github.com/mattn/go-colorable'
- kind: git_tag
  url: https://github.com/mattn/go-isatty.git
  track: v0.0.8
  track-tags: false
  directory: 'src/vendor/github.com/mattn/go-isatty'
- kind: git_tag
  url: https://github.com/sirupsen/logrus.git
  track: v1.4.2
  track-tags: false
  directory: 'src/vendor/github.com/sirupsen/logrus'
- kind: git_tag
  url: https://github.com/spf13/cobra.git
  track: v0.0.5
  track-tags: false
  directory: 'src/vendor/github.com/spf13/cobra'
- kind: git_tag
  url: https://github.com/spf13/pflag.git
  track: v1.0.3
  track-tags: false
  directory: 'src/vendor/github.com/spf13/pflag'
- kind: git_tag
  url: https://github.com/golang/crypto.git
  track: 505ab145d0a9
  track-tags: false
  directory: 'src/vendor/golang.org/x/crypto'
- kind: git_tag
  url: https://github.com/golang/sys.git
  track: 953cdadca894
  track-tags: false
  directory: 'src/vendor/golang.org/x/sys'

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/ca-certificates.bst
- freedesktop-sdk.bst:components/go.bst
- freedesktop-sdk.bst:components/go-md2man.bst
- freedesktop-sdk.bst:components/strace.bst
- freedesktop-sdk.bst:components/git-minimal.bst

depends:
- freedesktop-sdk.bst:components/podman.bst

variables:
  optimize-debug: "false"
  compress-debug: "false"

environment:
  GOFLAGS: -mod=vendor
