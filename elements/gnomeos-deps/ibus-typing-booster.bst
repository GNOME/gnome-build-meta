kind: autotools

sources:
- kind: git_repo
  url: github:mike-fabian/ibus-typing-booster.git
  track: '*.*'
  ref: 2.31.5-0-g417dd9fbb0ae1f917e825630f7b5b1588627dda8

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
