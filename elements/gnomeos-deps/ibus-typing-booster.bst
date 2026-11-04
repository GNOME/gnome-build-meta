kind: autotools

sources:
- kind: git_repo
  url: github:mike-fabian/ibus-typing-booster.git
  track: '*.*'
  ref: 2.31.3-0-g5a277d2bd4aadacfd48872dacd17d2af016ee643

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/autotools.bst
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
