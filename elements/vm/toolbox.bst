kind: meson

sources:
- kind: tar
  url: github_files:containers/toolbox/releases/download/0.0.99.3/toolbox-0.0.99.3.tar.xz
  ref: c385f180e640adbad35a0019613eb5cd8973426d68ade668ec004e6565712983
- kind: git_tag
  url: github:HarryMichal/go-version.git
  track: v1.0.0
  track-tags: false
  directory: 'src/vendor/github.com/HarryMichal/go-version'
  ref: v1.0.0-0-g55580acf86a8aaf1c30ad94a91cfd5dd90a6b222
- kind: git_tag
  url: github:acobaugh/osrelease.git
  track: a93a0a55a249
  track-tags: false
  directory: 'src/vendor/github.com/acobaugh/osrelease'
  ref: a93a0a55a24912e113e21f81971dc7248de7f6e2
- kind: git_tag
  url: github:briandowns/spinner.git
  track: v1.10.0
  track-tags: false
  directory: 'src/vendor/github.com/briandowns/spinner'
  ref: v1.10.0-0-gdb9a25053a700cbfa2b021429cd6146205028886
- kind: git_tag
  url: github:docker/go-units.git
  track: v0.4.0
  track-tags: false
  directory: 'src/vendor/github.com/docker/go-units'
  ref: v0.4.0-0-g519db1ee28dcc9fd2474ae59fca29a810482bfb1
- kind: git_tag
  url: github:fsnotify/fsnotify.git
  track: v1.4.7
  track-tags: false
  directory: 'src/vendor/github.com/fsnotify/fsnotify'
  ref: v1.4.7-0-gc2828203cd70a50dcccfb2761f8b1f8ceef9a8e9
- kind: git_tag
  url: github:fatih/color.git
  track: v1.7.0
  track-tags: false
  directory: 'src/vendor/github.com/fatih/color'
  ref: v1.7.0-0-g5b77d2a35fb0ede96d138fc9a99f5c9b6aef11b4
- kind: git_tag
  url: github:godbus/dbus.git
  track: v5.0.3
  track-tags: false
  directory: 'src/vendor/github.com/godbus/dbus/v5'
  ref: v5.0.3-0-g37bf87eef99d69c4f1d3528bd66e3a87dc201472
- kind: git_tag
  url: github:inconshreveable/mousetrap.git
  track: v1.0.0
  track-tags: false
  directory: 'src/vendor/github.com/inconshreveable/mousetrap'
  ref: v1.0-0-g76626ae9c91c4f2a10f34cad8ce83ea42c93bb75
- kind: git_tag
  url: github:konsorten/go-windows-terminal-sequences.git
  track: v1.0.1
  track-tags: false
  directory: 'src/vendor/github.com/konsorten/go-windows-terminal-sequences'
  ref: v1.0.1-0-g5c8c8bd35d3832f5d134ae1e1e375b69a4d25242
- kind: git_tag
  url: github:mattn/go-colorable.git
  track: v0.1.2
  track-tags: false
  directory: 'src/vendor/github.com/mattn/go-colorable'
  ref: v0.1.2-0-g8029fb3788e5a4a9c00e415f586a6d033f5d38b3
- kind: git_tag
  url: github:mattn/go-isatty.git
  track: v0.0.8
  track-tags: false
  directory: 'src/vendor/github.com/mattn/go-isatty'
  ref: v0.0.8-0-g1311e847b0cb909da63b5fecfb5370aa66236465
- kind: git_tag
  url: github:sirupsen/logrus.git
  track: v1.4.2
  track-tags: false
  directory: 'src/vendor/github.com/sirupsen/logrus'
  ref: v1.4.2-0-g839c75faf7f98a33d445d181f3018b5c3409a45e
- kind: git_tag
  url: github:spf13/cobra.git
  track: v0.0.5
  track-tags: false
  directory: 'src/vendor/github.com/spf13/cobra'
  ref: 0.0.5-0-gf2b07da1e2c38d5f12845a4f607e2e1018cbb1f5
- kind: git_tag
  url: github:spf13/pflag.git
  track: v1.0.3
  track-tags: false
  directory: 'src/vendor/github.com/spf13/pflag'
  ref: v1.0.3-0-g298182f68c66c05229eb03ac171abe6e309ee79a
- kind: git_tag
  url: github:golang/crypto.git
  track: 505ab145d0a9
  track-tags: false
  directory: 'src/vendor/golang.org/x/crypto'
  ref: 505ab145d0a99da450461ae2c1a9f6cd10d1f447
- kind: git_tag
  url: github:golang/sys.git
  track: 953cdadca894
  track-tags: false
  directory: 'src/vendor/golang.org/x/sys'
  ref: 953cdadca894cdc07be76fc99f95b40c28f06623
- kind: git_tag
  url: github:golang/text.git
  track: v0.3.0
  track-tags: false
  directory: 'src/vendor/golang.org/x/text'
  ref: v0.3.0-0-gf21a4dfb5e38f5895301dc265a8def02365cc3d0
- kind: git_tag
  url: github:go-yaml/yaml.git
  track: v2.2.2
  track-tags: false
  directory: 'src/vendor/gopkg.in/yaml.v2'
  ref: v2.2.2-0-g51d6538a90f86fe93ac480b35f37b2be17fef232
- kind: git_tag
  url: github:spf13/viper.git
  track: v1.3.2
  track-tags: false
  directory: 'src/vendor/github.com/spf13/viper'
  ref: v1.3.2-0-g9e56dacc08fbbf8c9ee2dbc717553c758ce42bc9
- kind: git_tag
  url: github:stretchr/testify.git
  track: v1.7.0
  track-tags: false
  directory: 'src/vendor/github.com/stretchr/testify'
  ref: v1.7.0-0-gacba37e5db06f0093b465a7d47822bf13644b66c
- kind: git_tag
  url: github:spf13/jwalterweatherman.git
  track: v1.0.0
  track-tags: false
  directory: 'src/vendor/github.com/spf13/jwalterweatherman'
  ref: v1.0.0-0-g4a4406e478ca629068e7768fc33f3f044173c0a6
- kind: git_tag
  url: github:spf13/cast.git
  track: v1.3.0
  track-tags: false
  directory: 'src/vendor/github.com/spf13/cast'
  ref: v1.3.0-0-g8c9545af88b134710ab1cd196795e7f2388358d7
- kind: git_tag
  url: github:spf13/afero.git
  track: v1.1.2
  track-tags: false
  directory: 'src/vendor/github.com/spf13/afero'
  ref: v1.1.2-0-gd40851caa0d747393da1ffb28f7f9d8b4eeffebd
- kind: git_tag
  url: github:pelletier/go-toml.git
  track: v1.2.0
  track-tags: false
  directory: 'src/vendor/github.com/pelletier/go-toml'
  ref: v1.2.0-0-gc01d1270ff3e442a8a57cddc1c92dc1138598194
- kind: git_tag
  url: github:mitchellh/mapstructure.git
  track: v1.1.2
  track-tags: false
  directory: 'src/vendor/github.com/mitchellh/mapstructure'
  ref: v1.1.2-0-g3536a929edddb9a5b34bd6861dc4a9647cb459fe
- kind: git_tag
  url: github:magiconair/properties.git
  track: v1.8.0
  track-tags: false
  directory: 'src/vendor/github.com/magiconair/properties'
  ref: v1.8.0-0-gc2353362d570a7bfa228149c62842019201cfb71
- kind: git_tag
  url: github:hashicorp/hcl.git
  track: v1.0.0
  track-tags: false
  directory: 'src/vendor/github.com/hashicorp/hcl'
  ref: v1.0.0-0-g8cb6e5b959231cc1119e43259c4a608f9c51a241

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
