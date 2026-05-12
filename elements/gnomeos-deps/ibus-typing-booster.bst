kind: autotools

sources:
- kind: git_repo
  url: github:mike-fabian/ibus-typing-booster.git
  track: '*.*'
  ref: 2.30.8-0-g8dc5a759e221f6873fae0ae818a45d7d0ab4d53e

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/python3.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- sdk/libibus.bst

runtime-depends:
- gnomeos-deps/m17n-db.bst
- gnomeos-deps/m17n-lib.bst

config:
  install-commands:
    (>):
    - |
      cat <<EOF >>'%{install-root}%{datadir}/applications/emoji-picker.desktop'
      NoDisplay=true
      EOF
