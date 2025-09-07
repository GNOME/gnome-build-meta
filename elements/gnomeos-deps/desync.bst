kind: manual

sources:
- kind: git_repo
  url: github:folbricht/desync.git
  track: v*
  ref: v0.9.6-0-g0aef76def97e1aa148d58b8a831f7c89b41ba9c4
- kind: go_module
  url: github:googleapis/google-cloud-go
  module: cloud.google.com/go/storage
  ref:
    go-version: v0.110.0
    git-ref: v0.110.0-0-gb4d0ff0e4e7be0f8048416f13db56d1c7bb6bec0
    explicit: True
- kind: go_module
  url: github:boljen/go-bitmap
  module: github.com/boljen/go-bitmap
  ref:
    go-version: v0.0.0-20151001105940-23cd2fb0ce7d
    git-ref: 23cd2fb0ce7db94d088d840df05fa0d274bbb2ec
    explicit: True
- kind: go_module
  url: github:cpuguy83/go-md2man
  module: github.com/cpuguy83/go-md2man/v2
  ref:
    go-version: v2.0.2
    git-ref: v2.0.2-0-gd97078115282836e16d0dca10b4b42ce60fc70e6
    explicit: True
- kind: go_module
  url: github:DataDog/zstd
  module: github.com/DataDog/zstd
  ref:
    go-version: v1.5.2
    git-ref: v1.5.2-0-ge5990c1bf80e6c9121baeae77d75de291fc008b9
    explicit: True
- kind: go_module
  url: github:davecgh/go-spew
  module: github.com/davecgh/go-spew
  ref:
    go-version: v1.1.1
    git-ref: v1.1.1-0-g8991bc29aa16c548c550c7ff78260e27b9ab7c73
    explicit: True
- kind: go_module
  url: github:dchest/siphash
  module: github.com/dchest/siphash
  ref:
    go-version: v1.2.3
    git-ref: v1.2.3-0-gff76266fe39867071f4d33fb03aa101a83ba6706
    explicit: True
- kind: go_module
  url: github:fatih/color
  module: github.com/fatih/color
  ref:
    go-version: v1.15.0
    git-ref: v1.15.0-0-g12126ed593697635c525b302836b292b657ea573
    explicit: True
- kind: go_module
  url: github:folbricht/tempfile
  module: github.com/folbricht/tempfile
  ref:
    go-version: v0.0.1
    git-ref: v0.0.1-0-gee190cb5934293f187a9d43ee34de7d5cf9ceb83
    explicit: True
- kind: go_module
  url: github:go-ini/ini
  module: github.com/go-ini/ini
  ref:
    go-version: v1.67.0
    git-ref: v1.67.0-0-gb2f570e5b5b844226bbefe6fb521d891f529a951
    explicit: True
- kind: go_module
  url: github:golang/groupcache
  module: github.com/golang/groupcache
  ref:
    go-version: v0.0.0-20210331224755-41bb18bfe9da
    git-ref: 41bb18bfe9da5321badc438f91158cd790a33aa3
    explicit: True
- kind: go_module
  url: github:golang/protobuf
  module: github.com/golang/protobuf
  ref:
    go-version: v1.5.3
    git-ref: v1.5.3-0-g5d5e8c018a13017f9d5b8bf4fad64aaa42a87308
    explicit: True
- kind: go_module
  url: github:googleapis/enterprise-certificate-proxy
  module: github.com/googleapis/enterprise-certificate-proxy
  ref:
    go-version: v0.2.3
    git-ref: v0.2.3-0-gd0957a96ce28f68cd21ce2742c06237f3fa93fbe
    explicit: True
- kind: go_module
  url: github:googleapis/gax-go
  module: github.com/googleapis/gax-go/v2
  ref:
    go-version: v2.8.0
    git-ref: v2.8.0-0-g77e4c0b8fc7be000a67e353e2d89cf71ca167cac
    explicit: True
- kind: go_module
  url: github:google/go-cmp
  module: github.com/google/go-cmp
  ref:
    go-version: v0.5.9
    git-ref: v0.5.9-0-ga97318bf6562f2ed2632c5f985db51b1bc5bdcd0
    explicit: True
- kind: go_module
  url: github:google/uuid
  module: github.com/google/uuid
  ref:
    go-version: v1.3.0
    git-ref: v1.3.0-0-g44b5fee7c49cf3bcdf723f106b36d56ef13ccc88
    explicit: True
- kind: go_module
  url: github:hanwen/go-fuse
  module: github.com/hanwen/go-fuse/v2
  ref:
    go-version: v2.2.0
    git-ref: v2.2.0-0-g915cf5413cdef5370ae3f953f8eb4cd9ac176d5c
    explicit: True
- kind: go_module
  url: github:inconshreveable/mousetrap
  module: github.com/inconshreveable/mousetrap
  ref:
    go-version: v1.1.0
    git-ref: v1.1.0-0-g4e8053ee7ef85a6bd26368364a6d27f1641c1d21
    explicit: True
- kind: go_module
  url: github:json-iterator/go
  module: github.com/json-iterator/go
  ref:
    go-version: v1.1.12
    git-ref: v1.1.12-0-g024077e996b048517130b21ea6bf12aa23055d3d
    explicit: True
- kind: go_module
  url: github:klauspost/compress
  module: github.com/klauspost/compress
  ref:
    go-version: v1.16.4
    git-ref: v1.16.4-0-g3c61d32490eb09e17e229559c73d2ab048cd0a8f
    explicit: True
- kind: go_module
  url: github:klauspost/cpuid
  module: github.com/klauspost/cpuid/v2
  ref:
    go-version: v2.0.4
    git-ref: v2.0.4-0-g11274af0a6d540f8fcfec0d5ed78fbe6f42c3ee3
    explicit: True
- kind: go_module
  url: github:kr/fs
  module: github.com/kr/fs
  ref:
    go-version: v0.1.0
    git-ref: v0.1.0-0-g1455def202f6e05b95cc7bfc7e8ae67ae5141eba
    explicit: True
- kind: go_module
  url: github:mattn/go-colorable
  module: github.com/mattn/go-colorable
  ref:
    go-version: v0.1.13
    git-ref: v0.1.13-0-g11a925cff3d38c293ddc8c05a16b504e3e2c63be
    explicit: True
- kind: go_module
  url: github:mattn/go-runewidth
  module: github.com/mattn/go-runewidth
  ref:
    go-version: v0.0.14
    git-ref: v0.0.14-0-g2c6a438f68cfe01255a90824599da41fdf76d1e2
    explicit: True
- kind: go_module
  url: github:minio/md5-simd
  module: github.com/minio/md5-simd
  ref:
    go-version: v1.1.2
    git-ref: v1.1.2-0-g776275e0c9a74ceebbd50fe5c1d61b0c80c608df
    explicit: True
- kind: go_module
  url: github:minio/minio-go
  module: github.com/minio/minio-go/v6
  ref:
    go-version: v6.0.57
    git-ref: v6.0.57-0-g51222d26253e90224f8b4f8ba9be9b7982e3ce53
    explicit: True
- kind: go_module
  url: github:minio/sha256-simd
  module: github.com/minio/sha256-simd
  ref:
    go-version: v1.0.0
    git-ref: v1.0.0-0-g6a57409d8e0fa3ae883aee331b71aaa40d5a7dd9
    explicit: True
- kind: go_module
  url: github:mitchellh/go-homedir
  module: github.com/mitchellh/go-homedir
  ref:
    go-version: v1.1.0
    git-ref: v1.1.0-0-gaf06845cf3004701891bf4fdb884bfe4920b3727
    explicit: True
- kind: go_module
  url: github:modern-go/concurrent
  module: github.com/modern-go/concurrent
  ref:
    go-version: v0.0.0-20180306012644-bacd9c7ef1dd
    git-ref: bacd9c7ef1dd9b15be4a9909b8ac7a4e313eec94
    explicit: True
- kind: go_module
  url: github:modern-go/reflect2
  module: github.com/modern-go/reflect2
  ref:
    go-version: v1.0.2
    git-ref: v1.0.2-0-g2b33151c9bbc5231aea69b8861c540102b087070
    explicit: True
- kind: go_module
  url: github:pkg/errors
  module: github.com/pkg/errors
  ref:
    go-version: v0.9.1
    git-ref: v0.9.1-0-g614d223910a179a466c1767a985424175c39b465
    explicit: True
- kind: go_module
  url: github:pkg/sftp
  module: github.com/pkg/sftp
  ref:
    go-version: v1.13.5
    git-ref: v1.13.5-0-ga17a626ab843d522fad5e3d2e22cec5519661e55
    explicit: True
- kind: go_module
  url: github:pkg/xattr
  module: github.com/pkg/xattr
  ref:
    go-version: v0.4.9
    git-ref: v0.4.9-0-g87ba458273dc4e1cfef4d6d43faffdcf7e9077be
    explicit: True
- kind: go_module
  url: github:pmezard/go-difflib
  module: github.com/pmezard/go-difflib
  ref:
    go-version: v1.0.0
    git-ref: v1.0.0-0-g792786c7400a136282c1664665ae0a8db921c6c2
    explicit: True
- kind: go_module
  url: github:rivo/uniseg
  module: github.com/rivo/uniseg
  ref:
    go-version: v0.2.0
    git-ref: v0.2.0-0-g75711fccf6a3e85bc74c241e2dddd06a9bc9e53d
    explicit: True
- kind: go_module
  url: github:russross/blackfriday
  module: github.com/russross/blackfriday/v2
  ref:
    go-version: v2.1.0
    git-ref: v2.1.0-0-g4c9bf9512682b995722660a4196c0013228e2049
    explicit: True
- kind: go_module
  url: github:sirupsen/logrus
  module: github.com/sirupsen/logrus
  ref:
    go-version: v1.9.0
    git-ref: v1.9.0-0-gf8bf7650dccb756cea26edaf9217aab85500fe07
    explicit: True
- kind: go_module
  url: github:spf13/cobra
  module: github.com/spf13/cobra
  ref:
    go-version: v1.7.0
    git-ref: v1.7.0-0-g4dd4b25de38418174a6e859e8a32eaccca32dccc
    explicit: True
- kind: go_module
  url: github:spf13/pflag
  module: github.com/spf13/pflag
  ref:
    go-version: v1.0.5
    git-ref: v1.0.5-0-g2e9d26c8c37aae03e3f9d4e90b7116f5accb7cab
    explicit: True
- kind: go_module
  url: github:stretchr/testify
  module: github.com/stretchr/testify
  ref:
    go-version: v1.8.2
    git-ref: v1.8.2-0-gf36bfe3c337aa95c86f04c721acdbafb5ffb1611
    explicit: True
- kind: go_module
  url: go:crypto
  module: golang.org/x/crypto
  ref:
    go-version: v0.21.0
    git-ref: v0.21.0-0-g7067223927c4e3f3bb91a5c6e0d2aae83df74e7a
    explicit: True
- kind: go_module
  url: go:net
  module: golang.org/x/net
  ref:
    go-version: v0.23.0
    git-ref: v0.23.0-0-gc48da131589f122489348be5dfbcb6457640046f
    explicit: True
- kind: go_module
  url: go:oauth2
  module: golang.org/x/oauth2
  ref:
    go-version: v0.7.0
    git-ref: v0.7.0-0-g36075149c5b89480def496c735b8a1ba5fc63218
    explicit: True
- kind: go_module
  url: go:sync
  module: golang.org/x/sync
  ref:
    go-version: v0.1.0
    git-ref: v0.1.0-0-g8fcdb60fdcc0539c5e357b2308249e4e752147f1
    explicit: True
- kind: go_module
  url: go:sys
  module: golang.org/x/sys
  ref:
    go-version: v0.18.0
    git-ref: v0.18.0-0-g360f961f8978a4c9a7c2e849bb482780cd6bb553
    explicit: True
- kind: go_module
  url: go:term
  module: golang.org/x/term
  ref:
    go-version: v0.18.0
    git-ref: v0.18.0-0-gc5eaf76d63c69ba9d890c5969f892022e97598da
    explicit: True
- kind: go_module
  url: go:text
  module: golang.org/x/text
  ref:
    go-version: v0.14.0
    git-ref: v0.14.0-0-g6c97a165dd661335ff7bce6104a008558123c353
    explicit: True
- kind: go_module
  url: go:xerrors
  module: golang.org/x/xerrors
  ref:
    go-version: v0.0.0-20220907171357-04be3eba64a2
    git-ref: 04be3eba64a22a838cdb17b8dca15a52871c08b4
    explicit: True
- kind: go_module
  url: github:census-instrumentation/opencensus-go
  module: go.opencensus.io
  ref:
    go-version: v0.24.0
    git-ref: v0.24.0-0-gb1a01ee95db0e690d91d7193d037447816fae4c5
    explicit: True

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst
- freedesktop-sdk.bst:components/go.bst

runtime-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

config:
  build-commands:
  - go build cmd/desync
  install-commands:
  - install -Dt %{install-root}%{bindir} cmd/desync/desync
  - "%{install-extra}"
