kind: autotools

sources:
- kind: git_repo
  url: repo_or_cz:socat.git
  track: tag-*
  exclude:
  - tag-*-b*
  ref: tag-1.8.1.0-0-g8834d6cc7e0d7b04cd31f9f7d0cb3e06913b0323

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:bootstrap/linux-headers.bst

depends:
- freedesktop-sdk.bst:bootstrap/readline.bst
- freedesktop-sdk.bst:components/openssl.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  autogen: autoconf

config:
  install-commands:
    (<):
    - touch doc/socat.1
    (>):
    - rm -rf '%{install-root}%{mandir}'
