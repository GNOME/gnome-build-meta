kind: manual

sources:
- kind: local
  path: files/sysupdate

build-depends:
- freedesktop-sdk.bst:components/sed.bst
- freedesktop-sdk.bst:public-stacks/runtime-gnu.bst

config:
  build-commands:
  - |
    for fname in *; do
      sed -i s/@sysupdate-branch@/%{sysupdate-branch}/ $fname
    done
  install-commands:
  - |
    for fname in *; do
      install -Dm644 -t %{install-root}%{indep-libdir}/sysupdate.d/ $fname
    done
  strip-commands: []
