kind: make

sources:
- kind: git_repo
  url: gitlab:libosinfo/osinfo-db.git
  track: 'v*'
  ref: v20260812-0-gae7a0bfe36940a7dde23fcd95ce60c0608cb7e33

build-depends:
- buildsystems/make.bst
- core-deps/osinfo-db-tools.bst
- freedesktop-sdk.bst:components/gettext.bst

variables:
  strip-binaries: ''
  make-install-args: >-
    DESTDIR="%{install-root}" OSINFO_DB_TARGET="--system" install
