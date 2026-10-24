kind: autotools

sources:
- kind: git_repo
  url: github:mike-fabian/ibus-typing-booster.git
  track: '*.*'
  ref: 2.31.2-0-g5b9fb087174ce54f8b7cf5f71ddbdbe42d228aeb

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
