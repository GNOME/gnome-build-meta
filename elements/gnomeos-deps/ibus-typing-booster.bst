kind: autotools

sources:
- kind: git_repo
  url: github:mike-fabian/ibus-typing-booster.git
  track: '*.*'
  ref: 2.30.10-0-g6d8dd1bd9ca0654d9a223a852979c212db1c429b

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
