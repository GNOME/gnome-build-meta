kind: make

sources:
- kind: git_repo
  url: gitlab:libosinfo/osinfo-db.git
  track: 'v*'
  ref: v20251212-0-g70fe571c605541e7be76b50f430c1cd13959c5b9

build-depends:
- buildsystems/make.bst
- core-deps/osinfo-db-tools.bst
- freedesktop-sdk.bst:components/gettext.bst
- freedesktop-sdk.bst:public-stacks/runtime-gnu.bst

variables:
  strip-binaries: ''
  make-install-args: >-
    DESTDIR="%{install-root}" OSINFO_DB_TARGET="--system" install
