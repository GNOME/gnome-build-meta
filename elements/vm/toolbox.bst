kind: meson

sources:
- kind: tar
  url: github_files:containers/toolbox/releases/download/0.0.99.3/toolbox-0.0.99.3.tar.xz
- kind: git_tag
  url: github:HarryMichal/go-version.git
  track: v1.0.0
  track-tags: false
  directory: 'src/vendor/github.com/HarryMichal/go-version'
- kind: git_tag
  url: github:acobaugh/osrelease.git
  track: a93a0a55a249
  track-tags: false
  directory: 'src/vendor/github.com/acobaugh/osrelease'
- kind: git_tag
  url: github:briandowns/spinner.git
  track: v1.10.0
  track-tags: false
  directory: 'src/vendor/github.com/briandowns/spinner'
- kind: git_tag
  url: github:docker/go-units.git
  track: v0.4.0
  track-tags: false
  directory: 'src/vendor/github.com/docker/go-units'
- kind: git_tag
  url: github:fsnotify/fsnotify.git
  track: v1.4.7
  track-tags: false
  directory: 'src/vendor/github.com/fsnotify/fsnotify'
- kind: git_tag
  url: github:fatih/color.git
  track: v1.7.0
  track-tags: false
  directory: 'src/vendor/github.com/fatih/color'
- kind: git_tag
  url: github:godbus/dbus.git
  track: v5.0.3
  track-tags: false
  directory: 'src/vendor/github.com/godbus/dbus/v5'
- kind: git_tag
  url: github:inconshreveable/mousetrap.git
  track: v1.0.0
  track-tags: false
  directory: 'src/vendor/github.com/inconshreveable/mousetrap'
- kind: git_tag
  url: github:konsorten/go-windows-terminal-sequences.git
  track: v1.0.1
  track-tags: false
  directory: 'src/vendor/github.com/konsorten/go-windows-terminal-sequences'
- kind: git_tag
  url: github:mattn/go-colorable.git
  track: v0.1.2
  track-tags: false
  directory: 'src/vendor/github.com/mattn/go-colorable'
- kind: git_tag
  url: github:mattn/go-isatty.git
  track: v0.0.8
  track-tags: false
  directory: 'src/vendor/github.com/mattn/go-isatty'
- kind: git_tag
  url: github:sirupsen/logrus.git
  track: v1.4.2
  track-tags: false
  directory: 'src/vendor/github.com/sirupsen/logrus'
- kind: git_tag
  url: github:spf13/cobra.git
  track: v0.0.5
  track-tags: false
  directory: 'src/vendor/github.com/spf13/cobra'
- kind: git_tag
  url: github:spf13/pflag.git
  track: v1.0.3
  track-tags: false
  directory: 'src/vendor/github.com/spf13/pflag'
- kind: git_tag
  url: github:golang/crypto.git
  track: 505ab145d0a9
  track-tags: false
  directory: 'src/vendor/golang.org/x/crypto'
- kind: git_tag
  url: github:golang/sys.git
  track: 953cdadca894
  track-tags: false
  directory: 'src/vendor/golang.org/x/sys'
- kind: git_tag
  url: github:golang/text.git
  track: v0.3.0
  track-tags: false
  directory: 'src/vendor/golang.org/x/text'
- kind: git_tag
  url: github:go-yaml/yaml.git
  track: v2.2.2
  track-tags: false
  directory: 'src/vendor/gopkg.in/yaml.v2'
- kind: git_tag
  url: github:spf13/viper.git
  track: v1.3.2
  track-tags: false
  directory: 'src/vendor/github.com/spf13/viper'
- kind: git_tag
  url: github:stretchr/testify.git
  track: v1.7.0
  track-tags: false
  directory: 'src/vendor/github.com/stretchr/testify'
- kind: git_tag
  url: github:spf13/jwalterweatherman.git
  track: v1.0.0
  track-tags: false
  directory: 'src/vendor/github.com/spf13/jwalterweatherman'
- kind: git_tag
  url: github:spf13/cast.git
  track: v1.3.0
  track-tags: false
  directory: 'src/vendor/github.com/spf13/cast'
- kind: git_tag
  url: github:spf13/afero.git
  track: v1.1.2
  track-tags: false
  directory: 'src/vendor/github.com/spf13/afero'
- kind: git_tag
  url: github:pelletier/go-toml.git
  track: v1.2.0
  track-tags: false
  directory: 'src/vendor/github.com/pelletier/go-toml'
- kind: git_tag
  url: github:mitchellh/mapstructure.git
  track: v1.1.2
  track-tags: false
  directory: 'src/vendor/github.com/mitchellh/mapstructure'
- kind: git_tag
  url: github:magiconair/properties.git
  track: v1.8.0
  track-tags: false
  directory: 'src/vendor/github.com/magiconair/properties'
- kind: git_tag
  url: github:hashicorp/hcl.git
  track: v1.0.0
  track-tags: false
  directory: 'src/vendor/github.com/hashicorp/hcl'

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
