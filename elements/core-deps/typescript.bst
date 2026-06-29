kind: manual

sources:
- kind: tar
  url: github_files:Microsoft/Typescript/releases/download/v5.9.3/typescript-5.9.3.tgz
  ref: 10e108c9cf7d5f2879053dff18515fb405abf2ccef63eaaf017d9c571687a1d3

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
  - "%{install-extra}"
