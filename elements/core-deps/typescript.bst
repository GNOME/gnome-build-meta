kind: manual

sources:
- kind: tar
  url: github_files:Microsoft/Typescript/releases/download/v5.5.3/typescript-5.5.3.tgz
  ref: f47d21b40c99188b4158f8a444f132207957d528b1f80ccbc019ce9c4765c3d1

depends:
- core-deps/nodejs.bst

variables:
  strip-binaries: ''

config:
  install-commands:
  - mkdir -p "%{install-root}%{libdir}/node_modules/typescript"
  - cp -pr bin/ lib/ "%{install-root}%{libdir}/node_modules/typescript"
  - mkdir -p "%{install-root}%{bindir}"
  - ln -s "%{libdir}/node_modules/typescript/bin/tsc" "%{install-root}%{bindir}/tsc"
  - ln -s "%{libdir}/node_modules/typescript/bin/tsserver" "%{install-root}%{bindir}/tsserver"
