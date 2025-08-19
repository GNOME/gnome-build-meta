kind: manual

sources:
- kind: tar
  url: 
    github_files:Microsoft/Typescript/releases/download/v5.9.2/typescript-5.9.2.tgz
  ref: 67a3bc82e822b8f45f653a80fc3a9730d23214d36c83ba85dd7f5abebee82062

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
